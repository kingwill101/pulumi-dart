import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_docker_build/pulumi_docker_build.dart' as docker_build;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

import '../models.dart';
import 'args.dart';

_containerEnvsFromMap(pulumi.Input<Map<String, String>>? environment) {
  if (environment == null) {
    return null;
  }

  return environment.toOutput().apply((values) {
    return values.entries
        .map(
          (entry) => gcp.cloudrunv2.ServiceTemplateContainerEnv(
            name: pulumi.Input.fromValue(entry.key),
            value: pulumi.Input.fromValue(entry.value),
          ),
        )
        .toList();
  });
}

/// GCP Cloud Run implementation of the Dart FaaS model.
///
/// Supported source modes:
/// - [DartFunctionImageSource]: build/push an image to Artifact Registry
/// - [DartFunctionArchiveSource]: stage an archive in Cloud Storage and deploy
///   with Cloud Run source-based container settings
class GcpCloudRunDartFunction extends pulumi.ComponentResource {
  /// Public service URL returned by Cloud Run.
  late final pulumi.Output<String> url;

  /// Resolved Cloud Run service name.
  late final pulumi.Output<String> serviceName;

  /// Container image reference for image-based deployments.
  late final pulumi.Output<String?> imageRef;

  /// Container image digest for image-based deployments.
  late final pulumi.Output<String?> imageDigest;

  /// Artifact Registry repository URI for image-based deployments.
  late final pulumi.Output<String?> registryUri;

  GcpCloudRunDartFunction(
    String name, {
    required GcpDartFunctionArgs args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'dart:gcp:faas:GcpCloudRunDartFunction',
         name,
         const {},
         options ?? pulumi.ComponentResourceOptions(),
       ) {
    validateGcpDartFunctionArgs(args);

    final childCustomOptions = pulumi.CustomResourceOptions(parent: this);
    final compute = args.compute ?? const GcpDartFunctionComputeArgs();
    final scaling = args.scaling ?? const GcpDartFunctionScalingArgs();

    final normalizedName = name.replaceAll('_', '-');
    final configuredServiceName = args.name ?? '$normalizedName-fn'.input();
    final configuredRepositoryId =
        args.repositoryId ?? '$normalizedName-repo'.input();

    final clientConfig = pulumi.output(gcp.organizations.getClientConfig());
    final resolvedLocation =
        args.location?.toOutput() ??
        clientConfig.apply<String>((config) {
          final region = config.region.trim();
          return region.isEmpty ? 'us-central1' : region;
        });
    final resolvedProject =
        args.project?.toOutput() ??
        clientConfig.apply<String>((config) => config.project);

    final cpu = compute.cpu ?? '1'.input();
    final memory = compute.memory ?? '512Mi'.input();
    final port = compute.port ?? 8080.input();
    final maxConcurrency = compute.maxInstanceRequestConcurrency ?? 80.input();
    final minInstances = scaling.minInstanceCount ?? 0.input();

    final limits = pulumi.Output.tuple(cpu.toOutput(), memory.toOutput())
        .apply<Map<String, String>>((values) {
          return {'cpu': values.$1, 'memory': values.$2};
        });

    final containerEnvs = _containerEnvsFromMap(args.environment);

    late final pulumi.Input<String> containerImage;
    pulumi.Input<String>? containerBaseImageUri;
    pulumi.Input<List<String>>? containerCommands;
    dynamic containerSourceCode;

    if (args.source case DartFunctionImageSource sourceImage) {
      final repository = gcp.artifactregistry.Repository(
        '$name-repository',
        args: gcp.artifactregistry.RepositoryArgs(
          format: 'DOCKER'.input(),
          repositoryId: configuredRepositoryId,
          location: resolvedLocation,
          project: resolvedProject,
          labels: args.labels,
        ),
        options: childCustomOptions,
      );

      final imageTag =
          pulumi.Output.tuple(
            repository.registryUri,
            configuredServiceName.toOutput(),
          ).apply<String>((values) {
            return '${values.$1}/${values.$2}:latest';
          });

      final accessToken = clientConfig.apply<String>(
        (config) => config.accessToken,
      );

      final image = docker_build.index.Image(
        '$name-image',
        args: docker_build.index.ImageArgs(
          push: true.input(),
          context: docker_build.index
              .BuildContext(location: sourceImage.context)
              .input(),
          tags: imageTag.apply<List<String>>((tag) => [tag]),
          registries: pulumi.Output.tuple(repository.registryUri, accessToken)
              .apply(
                (values) => [
                  docker_build.index.Registry(
                    address: pulumi.Input.fromValue(values.$1),
                    username: 'oauth2accesstoken'.input(),
                    password: pulumi.Input.fromValue(values.$2),
                  ),
                ],
              ),
        ),
        options: childCustomOptions,
      );

      containerImage = image.ref;
      imageRef = image.ref.apply<String?>((value) => value);
      imageDigest = image.digest.apply<String?>((value) => value);
      registryUri = repository.registryUri.apply<String?>((value) => value);
    } else {
      final binaryUpload = args.source as DartFunctionArchiveSource;
      final sourceObjectName =
          binaryUpload.objectName ?? '$normalizedName-source.zip'.input();
      final entryCommand = binaryUpload.command ?? 'bin/server'.input();

      final sourceBucket = gcp.storage.Bucket(
        '$name-source-bucket',
        args: gcp.storage.BucketArgs(
          name: binaryUpload.bucketName,
          project: resolvedProject,
          location: resolvedLocation,
          forceDestroy: true.input(),
          uniformBucketLevelAccess: true.input(),
        ),
        options: childCustomOptions,
      );

      final sourceObject = gcp.storage.BucketObject(
        '$name-source-object',
        args: gcp.storage.BucketObjectArgs(
          bucket: sourceBucket.name,
          name: sourceObjectName,
          source: binaryUpload.archive,
        ),
        options: childCustomOptions,
      );

      containerImage = 'scratch'.input();
      containerBaseImageUri = binaryUpload.baseImageUri!;
      containerCommands = entryCommand.toOutput().apply<List<String>>(
        (commandValue) => [commandValue],
      );
      containerSourceCode = gcp.cloudrunv2
          .ServiceTemplateContainerSourceCode(
            cloudStorageSource: gcp.cloudrunv2
                .ServiceTemplateContainerSourceCodeCloudStorageSource(
                  bucket: sourceBucket.name,
                  object_: sourceObject.name,
                  generation: sourceObject.generation.apply<String>(
                    (value) => '$value',
                  ),
                )
                .input(),
          )
          .input();

      imageRef = pulumi.Output.create<String?>(null);
      imageDigest = pulumi.Output.create<String?>(null);
      registryUri = pulumi.Output.create<String?>(null);
    }

    final service = gcp.cloudrunv2.Service(
      '$name-service',
      args: gcp.cloudrunv2.ServiceArgs(
        name: configuredServiceName,
        location: resolvedLocation,
        project: resolvedProject,
        deletionProtection: false.input(),
        labels: args.labels,
        invokerIamDisabled: args.allowUnauthenticated.input(),
        template: gcp.cloudrunv2
            .ServiceTemplate(
              serviceAccount: args.serviceAccount,
              maxInstanceRequestConcurrency: maxConcurrency,
              scaling: gcp.cloudrunv2
                  .ServiceTemplateScaling(
                    minInstanceCount: minInstances,
                    maxInstanceCount: scaling.maxInstanceCount,
                  )
                  .input(),
              containers: [
                gcp.cloudrunv2.ServiceTemplateContainer(
                  image: containerImage,
                  baseImageUri: containerBaseImageUri,
                  commands: containerCommands,
                  sourceCode: containerSourceCode,
                  envs: containerEnvs,
                  ports: gcp.cloudrunv2
                      .ServiceTemplateContainerPorts(containerPort: port)
                      .input(),
                  resources: gcp.cloudrunv2
                      .ServiceTemplateContainerResources(limits: limits)
                      .input(),
                ),
              ].input(),
            )
            .input(),
      ),
      options: childCustomOptions,
    );

    url = service.uri;
    serviceName = service.name;

    registerOutputs({
      'url': url,
      'serviceName': serviceName,
      'imageRef': imageRef,
      'imageDigest': imageDigest,
      'registryUri': registryUri,
    });
  }
}
