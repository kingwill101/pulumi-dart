// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_trigger_response.dart';
import 'https_trigger_response.dart';
import 'secret_env_var_response.dart';
import 'secret_volume_response.dart';
import 'source_repository_response.dart';

/// Result data returned by getFunction.
class GetFunctionResult {
  /// The amount of memory in MB available for a function. Defaults to 256MB.
  final int availableMemoryMb;

  /// Build environment variables that shall be available during build time.
  final Map<String, String> buildEnvironmentVariables;

  /// The Cloud Build ID of the latest successful deployment of the function.
  final String buildId;

  /// The Cloud Build Name of the function deployment. `projects//locations//builds/`.
  final String buildName;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers Builder (`roles/cloudbuild.customworkers.builder`) in the project.
  final String buildWorkerPool;

  /// User-provided description of a function.
  final String description;

  /// Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  final String dockerRegistry;

  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry. If unspecified and the deployment is eligible to use Artifact Registry, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  final String dockerRepository;

  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix (ID of the function), if not specified.
  final String entryPoint;

  /// Environment variables that shall be available during function execution.
  final Map<String, String> environmentVariables;

  /// A source that fires events in response to a condition in another service.
  final EventTriggerResponse eventTrigger;

  /// An HTTPS endpoint type of source that can be triggered via URL.
  final HttpsTriggerResponse httpsTrigger;

  /// The ingress settings for the function, controlling what traffic can reach it.
  final String ingressSettings;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. The following service accounts need to be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) - Required to protect the function's image. 2. Google Storage service account (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) - Required to protect the function's source code. If this service account does not exist, deploying a function without a KMS key or retrieving the service agent name provisions it. For more information, see https://cloud.google.com/storage/docs/projects#service-agents and https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud Functions delegates access to service agents to protect function resources in internal projects that are not accessible by the end user.
  final String kmsKeyName;

  /// Labels associated with this Cloud Function.
  final Map<String, String> labels;

  /// The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  final int maxInstances;

  /// A lower bound for the number function instances that may coexist at a given time.
  final int minInstances;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  final String name;

  /// Deprecated: use vpc_connector
  final String network;

  /// The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  final String runtime;

  /// Secret environment variables configuration.
  final List<SecretEnvVarResponse> secretEnvironmentVariables;

  /// Secret volumes configuration.
  final List<SecretVolumeResponse> secretVolumes;

  /// The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  final String serviceAccountEmail;

  /// The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.
  final String sourceArchiveUrl;

  /// **Beta Feature** The source repository where a function is hosted.
  final SourceRepositoryResponse sourceRepository;

  /// Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  final String sourceToken;

  /// The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)
  final String sourceUploadUrl;

  /// Status of the function deployment.
  final String status;

  /// The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  final String timeout;

  /// The last update timestamp of a Cloud Function.
  final String updateTime;

  /// The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  final String versionId;

  /// The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  final String vpcConnector;

  /// The egress settings for the connector, controlling what traffic is diverted through it.
  final String vpcConnectorEgressSettings;

  GetFunctionResult({
    required this.availableMemoryMb,
    required this.buildEnvironmentVariables,
    required this.buildId,
    required this.buildName,
    required this.buildWorkerPool,
    required this.description,
    required this.dockerRegistry,
    required this.dockerRepository,
    required this.entryPoint,
    required this.environmentVariables,
    required this.eventTrigger,
    required this.httpsTrigger,
    required this.ingressSettings,
    required this.kmsKeyName,
    required this.labels,
    required this.maxInstances,
    required this.minInstances,
    required this.name,
    required this.network,
    required this.runtime,
    required this.secretEnvironmentVariables,
    required this.secretVolumes,
    required this.serviceAccountEmail,
    required this.sourceArchiveUrl,
    required this.sourceRepository,
    required this.sourceToken,
    required this.sourceUploadUrl,
    required this.status,
    required this.timeout,
    required this.updateTime,
    required this.versionId,
    required this.vpcConnector,
    required this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availableMemoryMb'] = availableMemoryMb;
    map['buildEnvironmentVariables'] = buildEnvironmentVariables;
    map['buildId'] = buildId;
    map['buildName'] = buildName;
    map['buildWorkerPool'] = buildWorkerPool;
    map['description'] = description;
    map['dockerRegistry'] = dockerRegistry;
    map['dockerRepository'] = dockerRepository;
    map['entryPoint'] = entryPoint;
    map['environmentVariables'] = environmentVariables;
    map['eventTrigger'] = eventTrigger.toMap();
    map['httpsTrigger'] = httpsTrigger.toMap();
    map['ingressSettings'] = ingressSettings;
    map['kmsKeyName'] = kmsKeyName;
    map['labels'] = labels;
    map['maxInstances'] = maxInstances;
    map['minInstances'] = minInstances;
    map['name'] = name;
    map['network'] = network;
    map['runtime'] = runtime;
    map['secretEnvironmentVariables'] =
        pulumi.Input.encodeList<SecretEnvVarResponse, Map<String, dynamic>>(
            secretEnvironmentVariables, (value) => value.toMap());
    map['secretVolumes'] =
        pulumi.Input.encodeList<SecretVolumeResponse, Map<String, dynamic>>(
            secretVolumes, (value) => value.toMap());
    map['serviceAccountEmail'] = serviceAccountEmail;
    map['sourceArchiveUrl'] = sourceArchiveUrl;
    map['sourceRepository'] = sourceRepository.toMap();
    map['sourceToken'] = sourceToken;
    map['sourceUploadUrl'] = sourceUploadUrl;
    map['status'] = status;
    map['timeout'] = timeout;
    map['updateTime'] = updateTime;
    map['versionId'] = versionId;
    map['vpcConnector'] = vpcConnector;
    map['vpcConnectorEgressSettings'] = vpcConnectorEgressSettings;
    return map;
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      availableMemoryMb: map['availableMemoryMb'] as int,
      buildEnvironmentVariables:
          (map['buildEnvironmentVariables'] as Map).cast<String, String>(),
      buildId: map['buildId'] as String,
      buildName: map['buildName'] as String,
      buildWorkerPool: map['buildWorkerPool'] as String,
      description: map['description'] as String,
      dockerRegistry: map['dockerRegistry'] as String,
      dockerRepository: map['dockerRepository'] as String,
      entryPoint: map['entryPoint'] as String,
      environmentVariables:
          (map['environmentVariables'] as Map).cast<String, String>(),
      eventTrigger: EventTriggerResponse.fromMap(
          (map['eventTrigger'] as Map).cast<String, dynamic>()),
      httpsTrigger: HttpsTriggerResponse.fromMap(
          (map['httpsTrigger'] as Map).cast<String, dynamic>()),
      ingressSettings: map['ingressSettings'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maxInstances: map['maxInstances'] as int,
      minInstances: map['minInstances'] as int,
      name: map['name'] as String,
      network: map['network'] as String,
      runtime: map['runtime'] as String,
      secretEnvironmentVariables: pulumi.Input.decodeList<SecretEnvVarResponse>(
          map['secretEnvironmentVariables'],
          (value) => SecretEnvVarResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      secretVolumes: pulumi.Input.decodeList<SecretVolumeResponse>(
          map['secretVolumes'],
          (value) => SecretVolumeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      sourceArchiveUrl: map['sourceArchiveUrl'] as String,
      sourceRepository: SourceRepositoryResponse.fromMap(
          (map['sourceRepository'] as Map).cast<String, dynamic>()),
      sourceToken: map['sourceToken'] as String,
      sourceUploadUrl: map['sourceUploadUrl'] as String,
      status: map['status'] as String,
      timeout: map['timeout'] as String,
      updateTime: map['updateTime'] as String,
      versionId: map['versionId'] as String,
      vpcConnector: map['vpcConnector'] as String,
      vpcConnectorEgressSettings: map['vpcConnectorEgressSettings'] as String,
    );
  }
}
