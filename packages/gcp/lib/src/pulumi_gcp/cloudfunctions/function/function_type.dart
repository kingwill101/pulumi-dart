import 'package:pulumi/pulumi.dart';
import '../function_event_trigger/function_event_trigger.dart';
import '../function_on_deploy_update_policy/function_on_deploy_update_policy.dart';
import '../function_secret_environment_variable/function_secret_environment_variable.dart';
import '../function_secret_volume/function_secret_volume.dart';
import '../function_source_repository/function_source_repository.dart';
import 'function_args.dart';

/// Creates a new Cloud Function. For more information see:
///
/// * [API documentation](https://cloud.google.com/functions/docs/reference/rest/v1/projects.locations.functions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/functions/docs)
///
///
/// > **Warning:** As of November 1, 2019, newly created Functions are
/// private-by-default and will require [appropriate IAM permissions](https://cloud.google.com/functions/docs/reference/iam/roles)
/// to be invoked. See below examples for how to set up the appropriate permissions,
/// or view the [Cloud Functions IAM resources](https://www.terraform.io/docs/providers/google/r/cloudfunctions_cloud_function_iam.html)
/// for Cloud Functions.
///
/// ## Example Usage
///
/// ### Public Function
///
///
///
/// ### Single User
///
///
///
/// ## Import
///
/// Functions can be imported using the `name` or `{{project}}/{{region}}/name`, e.g.
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Functions can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudfunctions/function:Function default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudfunctions/function:Function default {{name}}
/// ```
class FunctionType extends CustomResource {
  /// Security patches are applied automatically to the runtime without requiring the function to be redeployed. This should be specified as an empty block and cannot be set alongside `on_deploy_update_policy`.
  late final Output<Map<String, dynamic>> automaticUpdatePolicy;

  /// Memory (in MB), available to the function. Default value is `256`. Possible values include `128`, `256`, `512`, `1024`, etc.
  late final Output<int?> availableMemoryMb;

  /// A set of key/value environment variable pairs available during build time.
  late final Output<Map<String, String>?> buildEnvironmentVariables;

  /// If provided, the self-provided service account to use to build the function. The format of this field is `projects/{project}/serviceAccounts/{serviceAccountEmail}`
  late final Output<String> buildServiceAccount;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  late final Output<String?> buildWorkerPool;

  /// Description of the function.
  late final Output<String?> description;

  /// Docker Registry to use for storing the function's Docker images. Allowed values are ARTIFACT_REGISTRY (default) and CONTAINER_REGISTRY.
  late final Output<String> dockerRegistry;

  /// User-managed repository created in Artifact Registry to which the function's Docker image will be pushed after it is built by Cloud Build. May optionally be encrypted with a customer-managed encryption key (CMEK). If unspecified and `docker_registry` is not explicitly set to `CONTAINER_REGISTRY`, GCF will create and use a default Artifact Registry repository named 'gcf-artifacts' in the region.
  late final Output<String?> dockerRepository;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Name of the function that will be executed when the Google Cloud Function is triggered.
  late final Output<String?> entryPoint;

  /// A set of key/value environment variable pairs to assign to the function.
  late final Output<Map<String, String>?> environmentVariables;

  /// A source that fires events in response to a condition in another service. Structure is documented below. Cannot be used with `trigger_http`.
  late final Output<FunctionEventTrigger> eventTrigger;

  /// The security level for the function. The following options are available:
  ///
  /// * `SECURE_ALWAYS` Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.
  /// * `SECURE_OPTIONAL` Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.
  late final Output<String> httpsTriggerSecurityLevel;

  /// URL which triggers function execution. Returned only if `trigger_http` is used.
  late final Output<String> httpsTriggerUrl;

  /// String value that controls what traffic can reach the function. Allowed values are `ALLOW_ALL`, `ALLOW_INTERNAL_AND_GCLB` and `ALLOW_INTERNAL_ONLY`. Check [ingress documentation](https://cloud.google.com/functions/docs/networking/network-settings#ingress_settings) to see the impact of each settings value. Changes to this field will recreate the cloud function.
  late final Output<String?> ingressSettings;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. Before deploying, please complete all pre-requisites described in https://cloud.google.com/functions/docs/securing/cmek#granting_service_accounts_access_to_the_key
  late final Output<String?> kmsKeyName;

  /// A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The limit on the maximum number of function instances that may coexist at a given time.
  late final Output<int> maxInstances;

  /// The limit on the minimum number of function instances that may coexist at a given time.
  late final Output<int?> minInstances;

  /// A user-defined name of the function. Function names must be unique globally.
  late final Output<String> name;

  /// Security patches are only applied when a function is redeployed. This should be specified as an empty block and cannot be set alongside `automatic_update_policy`. Structure is documented below.
  late final Output<FunctionOnDeployUpdatePolicy?> onDeployUpdatePolicy;

  /// Project of the function. If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Region of function. If it is not provided, the provider region is used.
  late final Output<String> region;

  /// The runtime in which the function is going to run.
  /// Eg. `"nodejs20"`, `"python39"`, `"dotnet3"`, `"go116"`, `"java11"`, `"ruby30"`, `"php74"`, etc. Check the [official doc](https://cloud.google.com/functions/docs/concepts/exec#runtimes) for the up-to-date list.
  ///
  /// - - -
  late final Output<String> runtime;

  /// Secret environment variables configuration. Structure is documented below.
  late final Output<List<FunctionSecretEnvironmentVariable>?>
      secretEnvironmentVariables;

  /// Secret volumes configuration. Structure is documented below.
  late final Output<List<FunctionSecretVolume>?> secretVolumes;

  /// If provided, the self-provided service account to run the function with.
  late final Output<String> serviceAccountEmail;

  /// The GCS bucket containing the zip archive which contains the function.
  late final Output<String?> sourceArchiveBucket;

  /// The source archive object (file) in archive bucket.
  late final Output<String?> sourceArchiveObject;

  /// Represents parameters related to source repository where a function is hosted.
  /// Cannot be set alongside `source_archive_bucket` or `source_archive_object`. Structure is documented below. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`.*
  late final Output<FunctionSourceRepository?> sourceRepository;

  /// Describes the current stage of a deployment.
  late final Output<String> status;

  /// Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds.
  late final Output<int?> timeout;

  /// Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as `https_trigger_url`. Cannot be used with `event_trigger`.
  late final Output<bool?> triggerHttp;

  /// The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  late final Output<String> versionId;

  /// The VPC Network Connector that this cloud function can connect to. It should be set up as fully-qualified URI. The format of this field is `projects/*/locations/*/connectors/*`.
  late final Output<String?> vpcConnector;

  /// The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are `ALL_TRAFFIC` and `PRIVATE_RANGES_ONLY`. Defaults to `PRIVATE_RANGES_ONLY`. If unset, this field preserves the previously set value.
  late final Output<String> vpcConnectorEgressSettings;

  FunctionType(
    String name, {
    FunctionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctions/function:Function',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.automaticUpdatePolicy =
        registerOutput<Map<String, dynamic>>('automaticUpdatePolicy');
    this.availableMemoryMb = registerOutput<int?>('availableMemoryMb');
    this.buildEnvironmentVariables =
        registerOutput<Map<String, String>?>('buildEnvironmentVariables');
    this.buildServiceAccount = registerOutput<String>('buildServiceAccount');
    this.buildWorkerPool = registerOutput<String?>('buildWorkerPool');
    this.description = registerOutput<String?>('description');
    this.dockerRegistry = registerOutput<String>('dockerRegistry');
    this.dockerRepository = registerOutput<String?>('dockerRepository');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.entryPoint = registerOutput<String?>('entryPoint');
    this.environmentVariables =
        registerOutput<Map<String, String>?>('environmentVariables');
    this.eventTrigger = registerOutput<FunctionEventTrigger>('eventTrigger');
    this.httpsTriggerSecurityLevel =
        registerOutput<String>('httpsTriggerSecurityLevel');
    this.httpsTriggerUrl = registerOutput<String>('httpsTriggerUrl');
    this.ingressSettings = registerOutput<String?>('ingressSettings');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.maxInstances = registerOutput<int>('maxInstances');
    this.minInstances = registerOutput<int?>('minInstances');
    this.name = registerOutput<String>('name');
    this.onDeployUpdatePolicy =
        registerOutput<FunctionOnDeployUpdatePolicy?>('onDeployUpdatePolicy');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.runtime = registerOutput<String>('runtime');
    this.secretEnvironmentVariables =
        registerOutput<List<FunctionSecretEnvironmentVariable>?>(
            'secretEnvironmentVariables');
    this.secretVolumes =
        registerOutput<List<FunctionSecretVolume>?>('secretVolumes');
    this.serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    this.sourceArchiveBucket = registerOutput<String?>('sourceArchiveBucket');
    this.sourceArchiveObject = registerOutput<String?>('sourceArchiveObject');
    this.sourceRepository =
        registerOutput<FunctionSourceRepository?>('sourceRepository');
    this.status = registerOutput<String>('status');
    this.timeout = registerOutput<int?>('timeout');
    this.triggerHttp = registerOutput<bool?>('triggerHttp');
    this.versionId = registerOutput<String>('versionId');
    this.vpcConnector = registerOutput<String?>('vpcConnector');
    this.vpcConnectorEgressSettings =
        registerOutput<String>('vpcConnectorEgressSettings');
  }
}
