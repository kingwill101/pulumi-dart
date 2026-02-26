import 'package:pulumi/pulumi.dart';
import 'event_trigger_response.dart';
import 'function_args.dart';
import 'https_trigger_response.dart';
import 'secret_env_var_response.dart';
import 'secret_volume_response.dart';
import 'source_repository_response.dart';

/// Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return `ALREADY_EXISTS` error.
class FunctionType extends CustomResource {
  /// The amount of memory in MB available for a function. Defaults to 256MB.
  late final Output<int> availableMemoryMb;

  /// Build environment variables that shall be available during build time.
  late final Output<Map<String, String>> buildEnvironmentVariables;

  /// The Cloud Build ID of the latest successful deployment of the function.
  late final Output<String> buildId;

  /// The Cloud Build Name of the function deployment. `projects//locations//builds/`.
  late final Output<String> buildName;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers Builder (`roles/cloudbuild.customworkers.builder`) in the project.
  late final Output<String> buildWorkerPool;

  /// User-provided description of a function.
  late final Output<String> description;

  /// Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  late final Output<String> dockerRegistry;

  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry. If unspecified and the deployment is eligible to use Artifact Registry, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  late final Output<String> dockerRepository;

  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix (ID of the function), if not specified.
  late final Output<String> entryPoint;

  /// Environment variables that shall be available during function execution.
  late final Output<Map<String, String>> environmentVariables;

  /// A source that fires events in response to a condition in another service.
  late final Output<EventTriggerResponse> eventTrigger;

  /// An HTTPS endpoint type of source that can be triggered via URL.
  late final Output<HttpsTriggerResponse> httpsTrigger;

  /// The ingress settings for the function, controlling what traffic can reach it.
  late final Output<String> ingressSettings;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. The following service accounts need to be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) - Required to protect the function's image. 2. Google Storage service account (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) - Required to protect the function's source code. If this service account does not exist, deploying a function without a KMS key or retrieving the service agent name provisions it. For more information, see https://cloud.google.com/storage/docs/projects#service-agents and https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud Functions delegates access to service agents to protect function resources in internal projects that are not accessible by the end user.
  late final Output<String> kmsKeyName;

  /// Labels associated with this Cloud Function.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  late final Output<int> maxInstances;

  /// A lower bound for the number function instances that may coexist at a given time.
  late final Output<int> minInstances;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  late final Output<String> name;

  /// Deprecated: use vpc_connector
  late final Output<String> network;
  late final Output<String> project;

  /// The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  late final Output<String> runtime;

  /// Secret environment variables configuration.
  late final Output<List<SecretEnvVarResponse>> secretEnvironmentVariables;

  /// Secret volumes configuration.
  late final Output<List<SecretVolumeResponse>> secretVolumes;

  /// The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  late final Output<String> serviceAccountEmail;

  /// The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.
  late final Output<String> sourceArchiveUrl;

  /// **Beta Feature** The source repository where a function is hosted.
  late final Output<SourceRepositoryResponse> sourceRepository;

  /// Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  late final Output<String> sourceToken;

  /// The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)
  late final Output<String> sourceUploadUrl;

  /// Status of the function deployment.
  late final Output<String> status;

  /// The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  late final Output<String> timeout;

  /// The last update timestamp of a Cloud Function.
  late final Output<String> updateTime;

  /// The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  late final Output<String> versionId;

  /// The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  late final Output<String> vpcConnector;

  /// The egress settings for the connector, controlling what traffic is diverted through it.
  late final Output<String> vpcConnectorEgressSettings;

  FunctionType(
    String name, {
    FunctionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudfunctions/v1:Function',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availableMemoryMb = registerOutput<int>('availableMemoryMb');
    this.buildEnvironmentVariables =
        registerOutput<Map<String, String>>('buildEnvironmentVariables');
    this.buildId = registerOutput<String>('buildId');
    this.buildName = registerOutput<String>('buildName');
    this.buildWorkerPool = registerOutput<String>('buildWorkerPool');
    this.description = registerOutput<String>('description');
    this.dockerRegistry = registerOutput<String>('dockerRegistry');
    this.dockerRepository = registerOutput<String>('dockerRepository');
    this.entryPoint = registerOutput<String>('entryPoint');
    this.environmentVariables =
        registerOutput<Map<String, String>>('environmentVariables');
    this.eventTrigger = registerOutput<EventTriggerResponse>('eventTrigger');
    this.httpsTrigger = registerOutput<HttpsTriggerResponse>('httpsTrigger');
    this.ingressSettings = registerOutput<String>('ingressSettings');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.maxInstances = registerOutput<int>('maxInstances');
    this.minInstances = registerOutput<int>('minInstances');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.runtime = registerOutput<String>('runtime');
    this.secretEnvironmentVariables =
        registerOutput<List<SecretEnvVarResponse>>(
            'secretEnvironmentVariables');
    this.secretVolumes =
        registerOutput<List<SecretVolumeResponse>>('secretVolumes');
    this.serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    this.sourceArchiveUrl = registerOutput<String>('sourceArchiveUrl');
    this.sourceRepository =
        registerOutput<SourceRepositoryResponse>('sourceRepository');
    this.sourceToken = registerOutput<String>('sourceToken');
    this.sourceUploadUrl = registerOutput<String>('sourceUploadUrl');
    this.status = registerOutput<String>('status');
    this.timeout = registerOutput<String>('timeout');
    this.updateTime = registerOutput<String>('updateTime');
    this.versionId = registerOutput<String>('versionId');
    this.vpcConnector = registerOutput<String>('vpcConnector');
    this.vpcConnectorEgressSettings =
        registerOutput<String>('vpcConnectorEgressSettings');
  }
}
