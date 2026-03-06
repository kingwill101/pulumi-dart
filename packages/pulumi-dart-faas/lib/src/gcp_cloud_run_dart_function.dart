import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_docker_build/pulumi_docker_build.dart' as docker_build;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

import 'models.dart';

/// Cloud Run scaling options.
class GcpDartFunctionScalingArgs {
  /// Minimum number of warm instances to keep available.
  final pulumi.Input<int>? minInstanceCount;

  /// Maximum number of instances Cloud Run may scale out to.
  final pulumi.Input<int>? maxInstanceCount;

  const GcpDartFunctionScalingArgs({
    this.minInstanceCount,
    this.maxInstanceCount,
  });
}

/// Cloud Run container compute/runtime options.
class GcpDartFunctionComputeArgs {
  /// CPU limit for the Cloud Run container.
  final pulumi.Input<String>? cpu;

  /// Memory limit for the Cloud Run container.
  final pulumi.Input<String>? memory;

  /// Container port exposed by the Dart server.
  final pulumi.Input<int>? port;

  /// Maximum concurrent requests per instance.
  final pulumi.Input<int>? maxInstanceRequestConcurrency;

  const GcpDartFunctionComputeArgs({
    this.cpu,
    this.memory,
    this.port,
    this.maxInstanceRequestConcurrency,
  });
}

/// Inputs for [GcpCloudRunDartFunction].
class GcpDartFunctionArgs {
  /// Shared source configuration for the deployed service.
  final DartFunctionSourceArgs source;

  /// Optional explicit Cloud Run service name.
  final pulumi.Input<String>? name;

  /// GCP region for the service and related resources.
  final pulumi.Input<String>? location;

  /// GCP project id override.
  final pulumi.Input<String>? project;

  /// Artifact Registry repository id used for image-based deployments.
  final pulumi.Input<String>? repositoryId;

  /// Optional service account email for the Cloud Run revision.
  final pulumi.Input<String>? serviceAccount;

  /// Environment variables exposed to the running container.
  final pulumi.Input<Map<String, String>>? environment;

  /// Labels applied to created GCP resources where supported.
  final pulumi.Input<Map<String, String>>? labels;

  /// Scaling controls for the Cloud Run service.
  final GcpDartFunctionScalingArgs? scaling;

  /// Compute and runtime controls for the Cloud Run container.
  final GcpDartFunctionComputeArgs? compute;

  /// Whether unauthenticated invocation should be allowed.
  final bool allowUnauthenticated;

  const GcpDartFunctionArgs({
    required this.source,
    this.name,
    this.location,
    this.project,
    this.repositoryId,
    this.serviceAccount,
    this.environment,
    this.labels,
    this.scaling,
    this.compute,
    this.allowUnauthenticated = true,
  });
}

/// Validates GCP Cloud Run arguments against the supported source modes.
void validateGcpDartFunctionArgs(GcpDartFunctionArgs args) {
  validateDartFunctionSourceArgs(
    args.source,
    allowedModes: const ['image', 'binaryUpload'],
  );
  if (args.source.binaryUpload?.baseImageUri == null &&
      args.source.binaryUpload != null) {
    throw ArgumentError(
      'source.binaryUpload.baseImageUri is required for the GCP adapter.',
    );
  }
}

_containerEnvsFromMap(
  pulumi.Input<Map<String, String>>? environment,
) {
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
/// - `source.image`: build/push container image to Artifact Registry
/// - `source.binaryUpload`: upload source archive to Cloud Storage and deploy
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

    if (args.source.image != null) {
      final sourceImage = args.source.image!;

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
      final binaryUpload = args.source.binaryUpload!;
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
          source: binaryUpload.sourceArchive,
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
