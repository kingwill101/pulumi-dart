// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../function_event_trigger/function_event_trigger.dart';
import '../function_on_deploy_update_policy/function_on_deploy_update_policy.dart';
import '../function_secret_environment_variable/function_secret_environment_variable.dart';
import '../function_secret_volume/function_secret_volume.dart';
import '../function_source_repository/function_source_repository.dart';

/// The set of arguments for Function.
class FunctionArgs {
  /// Security patches are applied automatically to the runtime without requiring the function to be redeployed. This should be specified as an empty block and cannot be set alongside `on_deploy_update_policy`.
  final pulumi.Input<Map<String, dynamic>>? automaticUpdatePolicy;

  /// Memory (in MB), available to the function. Default value is `256`. Possible values include `128`, `256`, `512`, `1024`, etc.
  final pulumi.Input<int>? availableMemoryMb;

  /// A set of key/value environment variable pairs available during build time.
  final pulumi.Input<Map<String, String>>? buildEnvironmentVariables;

  /// If provided, the self-provided service account to use to build the function. The format of this field is `projects/{project}/serviceAccounts/{serviceAccountEmail}`
  final pulumi.Input<String>? buildServiceAccount;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  final pulumi.Input<String>? buildWorkerPool;

  /// Description of the function.
  final pulumi.Input<String>? description;

  /// Docker Registry to use for storing the function's Docker images. Allowed values are ARTIFACT_REGISTRY (default) and CONTAINER_REGISTRY.
  final pulumi.Input<String>? dockerRegistry;

  /// User-managed repository created in Artifact Registry to which the function's Docker image will be pushed after it is built by Cloud Build. May optionally be encrypted with a customer-managed encryption key (CMEK). If unspecified and `docker_registry` is not explicitly set to `CONTAINER_REGISTRY`, GCF will create and use a default Artifact Registry repository named 'gcf-artifacts' in the region.
  final pulumi.Input<String>? dockerRepository;

  /// Name of the function that will be executed when the Google Cloud Function is triggered.
  final pulumi.Input<String>? entryPoint;

  /// A set of key/value environment variable pairs to assign to the function.
  final pulumi.Input<Map<String, String>>? environmentVariables;

  /// A source that fires events in response to a condition in another service. Structure is documented below. Cannot be used with `trigger_http`.
  final pulumi.Input<FunctionEventTrigger>? eventTrigger;

  /// The security level for the function. The following options are available:
  ///
  /// * `SECURE_ALWAYS` Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.
  /// * `SECURE_OPTIONAL` Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.
  final pulumi.Input<String>? httpsTriggerSecurityLevel;

  /// URL which triggers function execution. Returned only if `trigger_http` is used.
  final pulumi.Input<String>? httpsTriggerUrl;

  /// String value that controls what traffic can reach the function. Allowed values are `ALLOW_ALL`, `ALLOW_INTERNAL_AND_GCLB` and `ALLOW_INTERNAL_ONLY`. Check [ingress documentation](https://cloud.google.com/functions/docs/networking/network-settings#ingress_settings) to see the impact of each settings value. Changes to this field will recreate the cloud function.
  final pulumi.Input<String>? ingressSettings;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. Before deploying, please complete all pre-requisites described in https://cloud.google.com/functions/docs/securing/cmek#granting_service_accounts_access_to_the_key
  final pulumi.Input<String>? kmsKeyName;

  /// A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The limit on the maximum number of function instances that may coexist at a given time.
  final pulumi.Input<int>? maxInstances;

  /// The limit on the minimum number of function instances that may coexist at a given time.
  final pulumi.Input<int>? minInstances;

  /// A user-defined name of the function. Function names must be unique globally.
  final pulumi.Input<String>? name;

  /// Security patches are only applied when a function is redeployed. This should be specified as an empty block and cannot be set alongside `automatic_update_policy`. Structure is documented below.
  final pulumi.Input<FunctionOnDeployUpdatePolicy>? onDeployUpdatePolicy;

  /// Project of the function. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Region of function. If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// The runtime in which the function is going to run.
  /// Eg. `"nodejs20"`, `"python39"`, `"dotnet3"`, `"go116"`, `"java11"`, `"ruby30"`, `"php74"`, etc. Check the [official doc](https://cloud.google.com/functions/docs/concepts/exec#runtimes) for the up-to-date list.
  ///
  /// - - -
  final pulumi.Input<String> runtime;

  /// Secret environment variables configuration. Structure is documented below.
  final pulumi.Input<List<FunctionSecretEnvironmentVariable>>?
      secretEnvironmentVariables;

  /// Secret volumes configuration. Structure is documented below.
  final pulumi.Input<List<FunctionSecretVolume>>? secretVolumes;

  /// If provided, the self-provided service account to run the function with.
  final pulumi.Input<String>? serviceAccountEmail;

  /// The GCS bucket containing the zip archive which contains the function.
  final pulumi.Input<String>? sourceArchiveBucket;

  /// The source archive object (file) in archive bucket.
  final pulumi.Input<String>? sourceArchiveObject;

  /// Represents parameters related to source repository where a function is hosted.
  /// Cannot be set alongside `source_archive_bucket` or `source_archive_object`. Structure is documented below. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`.*
  final pulumi.Input<FunctionSourceRepository>? sourceRepository;

  /// Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds.
  final pulumi.Input<int>? timeout;

  /// Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as `https_trigger_url`. Cannot be used with `event_trigger`.
  final pulumi.Input<bool>? triggerHttp;

  /// The VPC Network Connector that this cloud function can connect to. It should be set up as fully-qualified URI. The format of this field is `projects/*/locations/*/connectors/*`.
  final pulumi.Input<String>? vpcConnector;

  /// The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are `ALL_TRAFFIC` and `PRIVATE_RANGES_ONLY`. Defaults to `PRIVATE_RANGES_ONLY`. If unset, this field preserves the previously set value.
  final pulumi.Input<String>? vpcConnectorEgressSettings;

  FunctionArgs({
    this.automaticUpdatePolicy,
    this.availableMemoryMb,
    this.buildEnvironmentVariables,
    this.buildServiceAccount,
    this.buildWorkerPool,
    this.description,
    this.dockerRegistry,
    this.dockerRepository,
    this.entryPoint,
    this.environmentVariables,
    this.eventTrigger,
    this.httpsTriggerSecurityLevel,
    this.httpsTriggerUrl,
    this.ingressSettings,
    this.kmsKeyName,
    this.labels,
    this.maxInstances,
    this.minInstances,
    this.name,
    this.onDeployUpdatePolicy,
    this.project,
    this.region,
    required this.runtime,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.serviceAccountEmail,
    this.sourceArchiveBucket,
    this.sourceArchiveObject,
    this.sourceRepository,
    this.timeout,
    this.triggerHttp,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automaticUpdatePolicyValue = automaticUpdatePolicy;
    if (automaticUpdatePolicyValue != null) {
      map['automaticUpdatePolicy'] = automaticUpdatePolicyValue;
    }
    final availableMemoryMbValue = availableMemoryMb;
    if (availableMemoryMbValue != null) {
      map['availableMemoryMb'] = availableMemoryMbValue;
    }
    final buildEnvironmentVariablesValue = buildEnvironmentVariables;
    if (buildEnvironmentVariablesValue != null) {
      map['buildEnvironmentVariables'] = buildEnvironmentVariablesValue;
    }
    final buildServiceAccountValue = buildServiceAccount;
    if (buildServiceAccountValue != null) {
      map['buildServiceAccount'] = buildServiceAccountValue;
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
      map['dockerRegistry'] = dockerRegistryValue;
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
      map['eventTrigger'] = pulumi.Input.mapOptionalInputValue<
          FunctionEventTrigger,
          Map<String, dynamic>>(eventTriggerValue, (value) => value.toMap());
    }
    final httpsTriggerSecurityLevelValue = httpsTriggerSecurityLevel;
    if (httpsTriggerSecurityLevelValue != null) {
      map['httpsTriggerSecurityLevel'] = httpsTriggerSecurityLevelValue;
    }
    final httpsTriggerUrlValue = httpsTriggerUrl;
    if (httpsTriggerUrlValue != null) {
      map['httpsTriggerUrl'] = httpsTriggerUrlValue;
    }
    final ingressSettingsValue = ingressSettings;
    if (ingressSettingsValue != null) {
      map['ingressSettings'] = ingressSettingsValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
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
    final onDeployUpdatePolicyValue = onDeployUpdatePolicy;
    if (onDeployUpdatePolicyValue != null) {
      map['onDeployUpdatePolicy'] = pulumi.Input.mapOptionalInputValue<
              FunctionOnDeployUpdatePolicy, Map<String, dynamic>>(
          onDeployUpdatePolicyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['runtime'] = runtime;
    final secretEnvironmentVariablesValue = secretEnvironmentVariables;
    if (secretEnvironmentVariablesValue != null) {
      map['secretEnvironmentVariables'] = pulumi.Input.mapOptionalInputValue<
              List<FunctionSecretEnvironmentVariable>,
              List<Map<String, dynamic>>>(
          secretEnvironmentVariablesValue,
          (value) => pulumi.Input.encodeList<FunctionSecretEnvironmentVariable,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final secretVolumesValue = secretVolumes;
    if (secretVolumesValue != null) {
      map['secretVolumes'] = pulumi.Input.mapOptionalInputValue<
              List<FunctionSecretVolume>, List<Map<String, dynamic>>>(
          secretVolumesValue,
          (value) => pulumi.Input.encodeList<FunctionSecretVolume,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final sourceArchiveBucketValue = sourceArchiveBucket;
    if (sourceArchiveBucketValue != null) {
      map['sourceArchiveBucket'] = sourceArchiveBucketValue;
    }
    final sourceArchiveObjectValue = sourceArchiveObject;
    if (sourceArchiveObjectValue != null) {
      map['sourceArchiveObject'] = sourceArchiveObjectValue;
    }
    final sourceRepositoryValue = sourceRepository;
    if (sourceRepositoryValue != null) {
      map['sourceRepository'] = pulumi.Input.mapOptionalInputValue<
              FunctionSourceRepository, Map<String, dynamic>>(
          sourceRepositoryValue, (value) => value.toMap());
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final triggerHttpValue = triggerHttp;
    if (triggerHttpValue != null) {
      map['triggerHttp'] = triggerHttpValue;
    }
    final vpcConnectorValue = vpcConnector;
    if (vpcConnectorValue != null) {
      map['vpcConnector'] = vpcConnectorValue;
    }
    final vpcConnectorEgressSettingsValue = vpcConnectorEgressSettings;
    if (vpcConnectorEgressSettingsValue != null) {
      map['vpcConnectorEgressSettings'] = vpcConnectorEgressSettingsValue;
    }
    return map;
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      automaticUpdatePolicy: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['automaticUpdatePolicy']),
      availableMemoryMb:
          pulumi.Input.asOptionalInput<int>(map['availableMemoryMb']),
      buildEnvironmentVariables:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['buildEnvironmentVariables']),
      buildServiceAccount:
          pulumi.Input.asOptionalInput<String>(map['buildServiceAccount']),
      buildWorkerPool:
          pulumi.Input.asOptionalInput<String>(map['buildWorkerPool']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dockerRegistry:
          pulumi.Input.asOptionalInput<String>(map['dockerRegistry']),
      dockerRepository:
          pulumi.Input.asOptionalInput<String>(map['dockerRepository']),
      entryPoint: pulumi.Input.asOptionalInput<String>(map['entryPoint']),
      environmentVariables: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['environmentVariables']),
      eventTrigger: pulumi.Input.asOptionalInput<FunctionEventTrigger>(
          map['eventTrigger']),
      httpsTriggerSecurityLevel: pulumi.Input.asOptionalInput<String>(
          map['httpsTriggerSecurityLevel']),
      httpsTriggerUrl:
          pulumi.Input.asOptionalInput<String>(map['httpsTriggerUrl']),
      ingressSettings:
          pulumi.Input.asOptionalInput<String>(map['ingressSettings']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      maxInstances: pulumi.Input.asOptionalInput<int>(map['maxInstances']),
      minInstances: pulumi.Input.asOptionalInput<int>(map['minInstances']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      onDeployUpdatePolicy:
          pulumi.Input.asOptionalInput<FunctionOnDeployUpdatePolicy>(
              map['onDeployUpdatePolicy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      runtime: pulumi.Input.asInput<String>(map['runtime']),
      secretEnvironmentVariables:
          pulumi.Input.asOptionalInput<List<FunctionSecretEnvironmentVariable>>(
              map['secretEnvironmentVariables']),
      secretVolumes: pulumi.Input.asOptionalInput<List<FunctionSecretVolume>>(
          map['secretVolumes']),
      serviceAccountEmail:
          pulumi.Input.asOptionalInput<String>(map['serviceAccountEmail']),
      sourceArchiveBucket:
          pulumi.Input.asOptionalInput<String>(map['sourceArchiveBucket']),
      sourceArchiveObject:
          pulumi.Input.asOptionalInput<String>(map['sourceArchiveObject']),
      sourceRepository: pulumi.Input.asOptionalInput<FunctionSourceRepository>(
          map['sourceRepository']),
      timeout: pulumi.Input.asOptionalInput<int>(map['timeout']),
      triggerHttp: pulumi.Input.asOptionalInput<bool>(map['triggerHttp']),
      vpcConnector: pulumi.Input.asOptionalInput<String>(map['vpcConnector']),
      vpcConnectorEgressSettings: pulumi.Input.asOptionalInput<String>(
          map['vpcConnectorEgressSettings']),
    );
  }
}
