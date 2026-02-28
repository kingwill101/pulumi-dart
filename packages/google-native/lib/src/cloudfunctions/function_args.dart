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

/// {@template pulumi_cloudfunctions_v1_function_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v1_function_args_doc}
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
  final pulumi.Input<FunctionVpcConnectorEgressSettings>? vpcConnectorEgressSettings;

  /// Creates a new [FunctionArgs].
  /// [availableMemoryMb] The amount of memory in MB available for a function. Defaults to 256MB.
  /// [buildEnvironmentVariables] Build environment variables that shall be available during build time.
  /// [buildWorkerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers Builder (`roles/cloudbuild.customworkers.builder`) in the project.
  /// [description] User-provided description of a function.
  /// [dockerRegistry] Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  /// [dockerRepository] User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry. If unspecified and the deployment is eligible to use Artifact Registry, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  /// [entryPoint] The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix (ID of the function), if not specified.
  /// [environmentVariables] Environment variables that shall be available during function execution.
  /// [eventTrigger] A source that fires events in response to a condition in another service.
  /// [httpsTrigger] An HTTPS endpoint type of source that can be triggered via URL.
  /// [ingressSettings] The ingress settings for the function, controlling what traffic can reach it.
  /// [kmsKeyName] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. The following service accounts need to be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) - Required to protect the function's image. 2. Google Storage service account (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) - Required to protect the function's source code. If this service account does not exist, deploying a function without a KMS key or retrieving the service agent name provisions it. For more information, see https://cloud.google.com/storage/docs/projects#service-agents and https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud Functions delegates access to service agents to protect function resources in internal projects that are not accessible by the end user.
  /// [labels] Labels associated with this Cloud Function.
  /// [location] Optional.
  /// [maxInstances] The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  /// [minInstances] A lower bound for the number function instances that may coexist at a given time.
  /// [name] A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  /// [network] Deprecated: use vpc_connector
  /// [project] Optional.
  /// [runtime] The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  /// [secretEnvironmentVariables] Secret environment variables configuration.
  /// [secretVolumes] Secret volumes configuration.
  /// [serviceAccountEmail] The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  /// [sourceArchiveUrl] The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.
  /// [sourceRepository] **Beta Feature** The source repository where a function is hosted.
  /// [sourceToken] Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  /// [sourceUploadUrl] The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)
  /// [timeout] The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  /// [vpcConnector] The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  /// [vpcConnectorEgressSettings] The egress settings for the connector, controlling what traffic is diverted through it.
  FunctionArgs({
    int? availableMemoryMb,
    Map<String, String>? buildEnvironmentVariables,
    String? buildWorkerPool,
    String? description,
    FunctionDockerRegistry? dockerRegistry,
    String? dockerRepository,
    String? entryPoint,
    Map<String, String>? environmentVariables,
    EventTrigger? eventTrigger,
    HttpsTrigger? httpsTrigger,
    FunctionIngressSettings? ingressSettings,
    String? kmsKeyName,
    Map<String, String>? labels,
    String? location,
    int? maxInstances,
    int? minInstances,
    String? name,
    String? network,
    String? project,
    String? runtime,
    List<SecretEnvVar>? secretEnvironmentVariables,
    List<SecretVolume>? secretVolumes,
    String? serviceAccountEmail,
    String? sourceArchiveUrl,
    SourceRepository? sourceRepository,
    String? sourceToken,
    String? sourceUploadUrl,
    String? timeout,
    String? vpcConnector,
    FunctionVpcConnectorEgressSettings? vpcConnectorEgressSettings,
  }) :
      availableMemoryMb = pulumi.Input.asOptionalInput<int>(availableMemoryMb),
      buildEnvironmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(buildEnvironmentVariables),
      buildWorkerPool = pulumi.Input.asOptionalInput<String>(buildWorkerPool),
      description = pulumi.Input.asOptionalInput<String>(description),
      dockerRegistry = pulumi.Input.asOptionalInput<FunctionDockerRegistry>(dockerRegistry),
      dockerRepository = pulumi.Input.asOptionalInput<String>(dockerRepository),
      entryPoint = pulumi.Input.asOptionalInput<String>(entryPoint),
      environmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(environmentVariables),
      eventTrigger = pulumi.Input.asOptionalInput<EventTrigger>(eventTrigger),
      httpsTrigger = pulumi.Input.asOptionalInput<HttpsTrigger>(httpsTrigger),
      ingressSettings = pulumi.Input.asOptionalInput<FunctionIngressSettings>(ingressSettings),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxInstances = pulumi.Input.asOptionalInput<int>(maxInstances),
      minInstances = pulumi.Input.asOptionalInput<int>(minInstances),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      runtime = pulumi.Input.asOptionalInput<String>(runtime),
      secretEnvironmentVariables = pulumi.Input.asOptionalInput<List<SecretEnvVar>>(secretEnvironmentVariables),
      secretVolumes = pulumi.Input.asOptionalInput<List<SecretVolume>>(secretVolumes),
      serviceAccountEmail = pulumi.Input.asOptionalInput<String>(serviceAccountEmail),
      sourceArchiveUrl = pulumi.Input.asOptionalInput<String>(sourceArchiveUrl),
      sourceRepository = pulumi.Input.asOptionalInput<SourceRepository>(sourceRepository),
      sourceToken = pulumi.Input.asOptionalInput<String>(sourceToken),
      sourceUploadUrl = pulumi.Input.asOptionalInput<String>(sourceUploadUrl),
      timeout = pulumi.Input.asOptionalInput<String>(timeout),
      vpcConnector = pulumi.Input.asOptionalInput<String>(vpcConnector),
      vpcConnectorEgressSettings = pulumi.Input.asOptionalInput<FunctionVpcConnectorEgressSettings>(vpcConnectorEgressSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMemoryMb': ?availableMemoryMb,
      'buildEnvironmentVariables': ?buildEnvironmentVariables,
      'buildWorkerPool': ?buildWorkerPool,
      'description': ?description,
      'dockerRegistry': ?pulumi.Input.mapOptionalInputValue<FunctionDockerRegistry, String>(dockerRegistry, (value) => value.value),
      'dockerRepository': ?dockerRepository,
      'entryPoint': ?entryPoint,
      'environmentVariables': ?environmentVariables,
      'eventTrigger': ?pulumi.Input.mapOptionalInputValue<EventTrigger, Map<String, dynamic>>(eventTrigger, (value) => value.toMap()),
      'httpsTrigger': ?pulumi.Input.mapOptionalInputValue<HttpsTrigger, Map<String, dynamic>>(httpsTrigger, (value) => value.toMap()),
      'ingressSettings': ?pulumi.Input.mapOptionalInputValue<FunctionIngressSettings, String>(ingressSettings, (value) => value.value),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'runtime': ?runtime,
      'secretEnvironmentVariables': ?pulumi.Input.mapOptionalInputValue<List<SecretEnvVar>, List<Map<String, dynamic>>>(secretEnvironmentVariables, (value) => pulumi.Input.encodeList<SecretEnvVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretVolumes': ?pulumi.Input.mapOptionalInputValue<List<SecretVolume>, List<Map<String, dynamic>>>(secretVolumes, (value) => pulumi.Input.encodeList<SecretVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountEmail': ?serviceAccountEmail,
      'sourceArchiveUrl': ?sourceArchiveUrl,
      'sourceRepository': ?pulumi.Input.mapOptionalInputValue<SourceRepository, Map<String, dynamic>>(sourceRepository, (value) => value.toMap()),
      'sourceToken': ?sourceToken,
      'sourceUploadUrl': ?sourceUploadUrl,
      'timeout': ?timeout,
      'vpcConnector': ?vpcConnector,
      'vpcConnectorEgressSettings': ?pulumi.Input.mapOptionalInputValue<FunctionVpcConnectorEgressSettings, String>(vpcConnectorEgressSettings, (value) => value.value),
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      availableMemoryMb: map['availableMemoryMb'] == null ? null : map['availableMemoryMb'] as int,
      buildEnvironmentVariables: map['buildEnvironmentVariables'] == null ? null : (map['buildEnvironmentVariables'] as Map).cast<String, String>(),
      buildWorkerPool: map['buildWorkerPool'] == null ? null : map['buildWorkerPool'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      dockerRegistry: map['dockerRegistry'] == null ? null : FunctionDockerRegistry.fromValue(map['dockerRegistry'] as String),
      dockerRepository: map['dockerRepository'] == null ? null : map['dockerRepository'] as String,
      entryPoint: map['entryPoint'] == null ? null : map['entryPoint'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      eventTrigger: map['eventTrigger'] == null ? null : EventTrigger.fromMap((map['eventTrigger'] as Map).cast<String, dynamic>()),
      httpsTrigger: map['httpsTrigger'] == null ? null : HttpsTrigger.fromMap((map['httpsTrigger'] as Map).cast<String, dynamic>()),
      ingressSettings: map['ingressSettings'] == null ? null : FunctionIngressSettings.fromValue(map['ingressSettings'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      maxInstances: map['maxInstances'] == null ? null : map['maxInstances'] as int,
      minInstances: map['minInstances'] == null ? null : map['minInstances'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      runtime: map['runtime'] == null ? null : map['runtime'] as String,
      secretEnvironmentVariables: map['secretEnvironmentVariables'] == null ? null : pulumi.Input.decodeList<SecretEnvVar>(map['secretEnvironmentVariables'], (value) => SecretEnvVar.fromMap((value as Map).cast<String, dynamic>())),
      secretVolumes: map['secretVolumes'] == null ? null : pulumi.Input.decodeList<SecretVolume>(map['secretVolumes'], (value) => SecretVolume.fromMap((value as Map).cast<String, dynamic>())),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : map['serviceAccountEmail'] as String,
      sourceArchiveUrl: map['sourceArchiveUrl'] == null ? null : map['sourceArchiveUrl'] as String,
      sourceRepository: map['sourceRepository'] == null ? null : SourceRepository.fromMap((map['sourceRepository'] as Map).cast<String, dynamic>()),
      sourceToken: map['sourceToken'] == null ? null : map['sourceToken'] as String,
      sourceUploadUrl: map['sourceUploadUrl'] == null ? null : map['sourceUploadUrl'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      vpcConnector: map['vpcConnector'] == null ? null : map['vpcConnector'] as String,
      vpcConnectorEgressSettings: map['vpcConnectorEgressSettings'] == null ? null : FunctionVpcConnectorEgressSettings.fromValue(map['vpcConnectorEgressSettings'] as String),
    );
  }
}

