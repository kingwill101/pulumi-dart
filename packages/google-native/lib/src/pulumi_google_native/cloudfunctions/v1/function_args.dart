// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_trigger.dart';
import 'function_docker_registry.dart';
import 'function_ingress_settings.dart';
import 'function_vpc_connector_egress_settings.dart';
import 'https_trigger.dart';
import 'secret_env_var.dart';
import 'secret_volume.dart';
import 'source_repository.dart';

/// The set of arguments for Function.
class FunctionArgs {
  /// The amount of memory in MB available for a function. Defaults to 256MB.
  final pulumi.Input<int>? availableMemoryMb;

  /// Build environment variables that shall be available during build time.
  final pulumi.Input<Map<String, String>>? buildEnvironmentVariables;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers Builder (`roles/cloudbuild.customworkers.builder`) in the project.
  final pulumi.Input<String>? buildWorkerPool;

  /// User-provided description of a function.
  final pulumi.Input<String>? description;

  /// Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  final pulumi.Input<FunctionDockerRegistry>? dockerRegistry;

  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry. If unspecified and the deployment is eligible to use Artifact Registry, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  final pulumi.Input<String>? dockerRepository;

  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix (ID of the function), if not specified.
  final pulumi.Input<String>? entryPoint;

  /// Environment variables that shall be available during function execution.
  final pulumi.Input<Map<String, String>>? environmentVariables;

  /// A source that fires events in response to a condition in another service.
  final pulumi.Input<EventTrigger>? eventTrigger;

  /// An HTTPS endpoint type of source that can be triggered via URL.
  final pulumi.Input<HttpsTrigger>? httpsTrigger;

  /// The ingress settings for the function, controlling what traffic can reach it.
  final pulumi.Input<FunctionIngressSettings>? ingressSettings;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. The following service accounts need to be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) - Required to protect the function's image. 2. Google Storage service account (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) - Required to protect the function's source code. If this service account does not exist, deploying a function without a KMS key or retrieving the service agent name provisions it. For more information, see https://cloud.google.com/storage/docs/projects#service-agents and https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud Functions delegates access to service agents to protect function resources in internal projects that are not accessible by the end user.
  final pulumi.Input<String>? kmsKeyName;

  /// Labels associated with this Cloud Function.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  final pulumi.Input<int>? maxInstances;

  /// A lower bound for the number function instances that may coexist at a given time.
  final pulumi.Input<int>? minInstances;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  final pulumi.Input<String>? name;

  /// Deprecated: use vpc_connector
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;

  /// The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  final pulumi.Input<String>? runtime;

  /// Secret environment variables configuration.
  final pulumi.Input<List<SecretEnvVar>>? secretEnvironmentVariables;

  /// Secret volumes configuration.
  final pulumi.Input<List<SecretVolume>>? secretVolumes;

  /// The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  final pulumi.Input<String>? serviceAccountEmail;

  /// The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.
  final pulumi.Input<String>? sourceArchiveUrl;

  /// **Beta Feature** The source repository where a function is hosted.
  final pulumi.Input<SourceRepository>? sourceRepository;

  /// Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  final pulumi.Input<String>? sourceToken;

  /// The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)
  final pulumi.Input<String>? sourceUploadUrl;

  /// The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  final pulumi.Input<String>? timeout;

  /// The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  final pulumi.Input<String>? vpcConnector;

  /// The egress settings for the connector, controlling what traffic is diverted through it.
  final pulumi.Input<FunctionVpcConnectorEgressSettings>?
      vpcConnectorEgressSettings;

  FunctionArgs({
    this.availableMemoryMb,
    this.buildEnvironmentVariables,
    this.buildWorkerPool,
    this.description,
    this.dockerRegistry,
    this.dockerRepository,
    this.entryPoint,
    this.environmentVariables,
    this.eventTrigger,
    this.httpsTrigger,
    this.ingressSettings,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.maxInstances,
    this.minInstances,
    this.name,
    this.network,
    this.project,
    this.runtime,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.serviceAccountEmail,
    this.sourceArchiveUrl,
    this.sourceRepository,
    this.sourceToken,
    this.sourceUploadUrl,
    this.timeout,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availableMemoryMbValue = availableMemoryMb;
    if (availableMemoryMbValue != null) {
      map['availableMemoryMb'] = availableMemoryMbValue;
    }
    final buildEnvironmentVariablesValue = buildEnvironmentVariables;
    if (buildEnvironmentVariablesValue != null) {
      map['buildEnvironmentVariables'] = buildEnvironmentVariablesValue;
    }
    final buildWorkerPoolValue = buildWorkerPool;
    if (buildWorkerPoolValue != null) {
      map['buildWorkerPool'] = buildWorkerPoolValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dockerRegistryValue = dockerRegistry;
    if (dockerRegistryValue != null) {
      map['dockerRegistry'] =
          pulumi.Input.mapOptionalInputValue<FunctionDockerRegistry, String>(
              dockerRegistryValue, (value) => value.value);
    }
    final dockerRepositoryValue = dockerRepository;
    if (dockerRepositoryValue != null) {
      map['dockerRepository'] = dockerRepositoryValue;
    }
    final entryPointValue = entryPoint;
    if (entryPointValue != null) {
      map['entryPoint'] = entryPointValue;
    }
    final environmentVariablesValue = environmentVariables;
    if (environmentVariablesValue != null) {
      map['environmentVariables'] = environmentVariablesValue;
    }
    final eventTriggerValue = eventTrigger;
    if (eventTriggerValue != null) {
      map['eventTrigger'] = pulumi.Input.mapOptionalInputValue<EventTrigger,
          Map<String, dynamic>>(eventTriggerValue, (value) => value.toMap());
    }
    final httpsTriggerValue = httpsTrigger;
    if (httpsTriggerValue != null) {
      map['httpsTrigger'] = pulumi.Input.mapOptionalInputValue<HttpsTrigger,
          Map<String, dynamic>>(httpsTriggerValue, (value) => value.toMap());
    }
    final ingressSettingsValue = ingressSettings;
    if (ingressSettingsValue != null) {
      map['ingressSettings'] =
          pulumi.Input.mapOptionalInputValue<FunctionIngressSettings, String>(
              ingressSettingsValue, (value) => value.value);
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maxInstancesValue = maxInstances;
    if (maxInstancesValue != null) {
      map['maxInstances'] = maxInstancesValue;
    }
    final minInstancesValue = minInstances;
    if (minInstancesValue != null) {
      map['minInstances'] = minInstancesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final runtimeValue = runtime;
    if (runtimeValue != null) {
      map['runtime'] = runtimeValue;
    }
    final secretEnvironmentVariablesValue = secretEnvironmentVariables;
    if (secretEnvironmentVariablesValue != null) {
      map['secretEnvironmentVariables'] = pulumi.Input.mapOptionalInputValue<
              List<SecretEnvVar>, List<Map<String, dynamic>>>(
          secretEnvironmentVariablesValue,
          (value) =>
              pulumi.Input.encodeList<SecretEnvVar, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final secretVolumesValue = secretVolumes;
    if (secretVolumesValue != null) {
      map['secretVolumes'] = pulumi.Input.mapOptionalInputValue<
              List<SecretVolume>, List<Map<String, dynamic>>>(
          secretVolumesValue,
          (value) =>
              pulumi.Input.encodeList<SecretVolume, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final sourceArchiveUrlValue = sourceArchiveUrl;
    if (sourceArchiveUrlValue != null) {
      map['sourceArchiveUrl'] = sourceArchiveUrlValue;
    }
    final sourceRepositoryValue = sourceRepository;
    if (sourceRepositoryValue != null) {
      map['sourceRepository'] = pulumi.Input.mapOptionalInputValue<
              SourceRepository, Map<String, dynamic>>(
          sourceRepositoryValue, (value) => value.toMap());
    }
    final sourceTokenValue = sourceToken;
    if (sourceTokenValue != null) {
      map['sourceToken'] = sourceTokenValue;
    }
    final sourceUploadUrlValue = sourceUploadUrl;
    if (sourceUploadUrlValue != null) {
      map['sourceUploadUrl'] = sourceUploadUrlValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final vpcConnectorValue = vpcConnector;
    if (vpcConnectorValue != null) {
      map['vpcConnector'] = vpcConnectorValue;
    }
    final vpcConnectorEgressSettingsValue = vpcConnectorEgressSettings;
    if (vpcConnectorEgressSettingsValue != null) {
      map['vpcConnectorEgressSettings'] = pulumi.Input.mapOptionalInputValue<
          FunctionVpcConnectorEgressSettings,
          String>(vpcConnectorEgressSettingsValue, (value) => value.value);
    }
    return map;
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      availableMemoryMb:
          pulumi.Input.asOptionalInput<int>(map['availableMemoryMb']),
      buildEnvironmentVariables:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['buildEnvironmentVariables']),
      buildWorkerPool:
          pulumi.Input.asOptionalInput<String>(map['buildWorkerPool']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dockerRegistry: pulumi.Input.asOptionalInput<FunctionDockerRegistry>(
          map['dockerRegistry']),
      dockerRepository:
          pulumi.Input.asOptionalInput<String>(map['dockerRepository']),
      entryPoint: pulumi.Input.asOptionalInput<String>(map['entryPoint']),
      environmentVariables: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['environmentVariables']),
      eventTrigger:
          pulumi.Input.asOptionalInput<EventTrigger>(map['eventTrigger']),
      httpsTrigger:
          pulumi.Input.asOptionalInput<HttpsTrigger>(map['httpsTrigger']),
      ingressSettings: pulumi.Input.asOptionalInput<FunctionIngressSettings>(
          map['ingressSettings']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      maxInstances: pulumi.Input.asOptionalInput<int>(map['maxInstances']),
      minInstances: pulumi.Input.asOptionalInput<int>(map['minInstances']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runtime: pulumi.Input.asOptionalInput<String>(map['runtime']),
      secretEnvironmentVariables:
          pulumi.Input.asOptionalInput<List<SecretEnvVar>>(
              map['secretEnvironmentVariables']),
      secretVolumes: pulumi.Input.asOptionalInput<List<SecretVolume>>(
          map['secretVolumes']),
      serviceAccountEmail:
          pulumi.Input.asOptionalInput<String>(map['serviceAccountEmail']),
      sourceArchiveUrl:
          pulumi.Input.asOptionalInput<String>(map['sourceArchiveUrl']),
      sourceRepository: pulumi.Input.asOptionalInput<SourceRepository>(
          map['sourceRepository']),
      sourceToken: pulumi.Input.asOptionalInput<String>(map['sourceToken']),
      sourceUploadUrl:
          pulumi.Input.asOptionalInput<String>(map['sourceUploadUrl']),
      timeout: pulumi.Input.asOptionalInput<String>(map['timeout']),
      vpcConnector: pulumi.Input.asOptionalInput<String>(map['vpcConnector']),
      vpcConnectorEgressSettings:
          pulumi.Input.asOptionalInput<FunctionVpcConnectorEgressSettings>(
              map['vpcConnectorEgressSettings']),
    );
  }
}
