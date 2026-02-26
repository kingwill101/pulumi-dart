// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../function_event_trigger/function_event_trigger.dart';
import '../function_on_deploy_update_policy/function_on_deploy_update_policy.dart';
import '../function_secret_environment_variable/function_secret_environment_variable.dart';
import '../function_secret_volume/function_secret_volume.dart';
import '../function_source_repository/function_source_repository.dart';

/// The set of arguments for Function.
class FunctionArgs {
  /// Security patches are applied automatically to the runtime without requiring the function to be redeployed. This should be specified as an empty block and cannot be set alongside <span pulumi-lang-nodejs="`onDeployUpdatePolicy`" pulumi-lang-dotnet="`OnDeployUpdatePolicy`" pulumi-lang-go="`onDeployUpdatePolicy`" pulumi-lang-python="`on_deploy_update_policy`" pulumi-lang-yaml="`onDeployUpdatePolicy`" pulumi-lang-java="`onDeployUpdatePolicy`">`on_deploy_update_policy`</span>.
  final Input<Map<String, dynamic>>? automaticUpdatePolicy;

  /// Memory (in MB), available to the function. Default value is <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>. Possible values include <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>, <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>, <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span>, etc.
  final Input<int>? availableMemoryMb;

  /// A set of key/value environment variable pairs available during build time.
  final Input<Map<String, String>>? buildEnvironmentVariables;

  /// If provided, the self-provided service account to use to build the function. The format of this field is `projects/{project}/serviceAccounts/{serviceAccountEmail}`
  final Input<String>? buildServiceAccount;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  final Input<String>? buildWorkerPool;

  /// Description of the function.
  final Input<String>? description;

  /// Docker Registry to use for storing the function's Docker images. Allowed values are ARTIFACT_REGISTRY (default) and CONTAINER_REGISTRY.
  final Input<String>? dockerRegistry;

  /// User-managed repository created in Artifact Registry to which the function's Docker image will be pushed after it is built by Cloud Build. May optionally be encrypted with a customer-managed encryption key (CMEK). If unspecified and <span pulumi-lang-nodejs="`dockerRegistry`" pulumi-lang-dotnet="`DockerRegistry`" pulumi-lang-go="`dockerRegistry`" pulumi-lang-python="`docker_registry`" pulumi-lang-yaml="`dockerRegistry`" pulumi-lang-java="`dockerRegistry`">`docker_registry`</span> is not explicitly set to `CONTAINER_REGISTRY`, GCF will create and use a default Artifact Registry repository named 'gcf-artifacts' in the region.
  final Input<String>? dockerRepository;

  /// Name of the function that will be executed when the Google Cloud Function is triggered.
  final Input<String>? entryPoint;

  /// A set of key/value environment variable pairs to assign to the function.
  final Input<Map<String, String>>? environmentVariables;

  /// A source that fires events in response to a condition in another service. Structure is documented below. Cannot be used with <span pulumi-lang-nodejs="`triggerHttp`" pulumi-lang-dotnet="`TriggerHttp`" pulumi-lang-go="`triggerHttp`" pulumi-lang-python="`trigger_http`" pulumi-lang-yaml="`triggerHttp`" pulumi-lang-java="`triggerHttp`">`trigger_http`</span>.
  final Input<FunctionEventTrigger>? eventTrigger;

  /// The security level for the function. The following options are available:
  ///
  /// * `SECURE_ALWAYS` Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.
  /// * `SECURE_OPTIONAL` Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.
  final Input<String>? httpsTriggerSecurityLevel;

  /// URL which triggers function execution. Returned only if <span pulumi-lang-nodejs="`triggerHttp`" pulumi-lang-dotnet="`TriggerHttp`" pulumi-lang-go="`triggerHttp`" pulumi-lang-python="`trigger_http`" pulumi-lang-yaml="`triggerHttp`" pulumi-lang-java="`triggerHttp`">`trigger_http`</span> is used.
  final Input<String>? httpsTriggerUrl;

  /// String value that controls what traffic can reach the function. Allowed values are `ALLOW_ALL`, `ALLOW_INTERNAL_AND_GCLB` and `ALLOW_INTERNAL_ONLY`. Check [ingress documentation](https://cloud.google.com/functions/docs/networking/network-settings#ingress_settings) to see the impact of each settings value. Changes to this field will recreate the cloud function.
  final Input<String>? ingressSettings;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// If specified, you must also provide an artifact registry repository using the <span pulumi-lang-nodejs="`dockerRepository`" pulumi-lang-dotnet="`DockerRepository`" pulumi-lang-go="`dockerRepository`" pulumi-lang-python="`docker_repository`" pulumi-lang-yaml="`dockerRepository`" pulumi-lang-java="`dockerRepository`">`docker_repository`</span> field that was created with the same KMS crypto key. Before deploying, please complete all pre-requisites described in https://cloud.google.com/functions/docs/securing/cmek#granting_service_accounts_access_to_the_key
  final Input<String>? kmsKeyName;

  /// A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The limit on the maximum number of function instances that may coexist at a given time.
  final Input<int>? maxInstances;

  /// The limit on the minimum number of function instances that may coexist at a given time.
  final Input<int>? minInstances;

  /// A user-defined name of the function. Function names must be unique globally.
  final Input<String>? name;

  /// Security patches are only applied when a function is redeployed. This should be specified as an empty block and cannot be set alongside <span pulumi-lang-nodejs="`automaticUpdatePolicy`" pulumi-lang-dotnet="`AutomaticUpdatePolicy`" pulumi-lang-go="`automaticUpdatePolicy`" pulumi-lang-python="`automatic_update_policy`" pulumi-lang-yaml="`automaticUpdatePolicy`" pulumi-lang-java="`automaticUpdatePolicy`">`automatic_update_policy`</span>. Structure is documented below.
  final Input<FunctionOnDeployUpdatePolicy>? onDeployUpdatePolicy;

  /// Project of the function. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Region of function. If it is not provided, the provider region is used.
  final Input<String>? region;

  /// The runtime in which the function is going to run.
  /// Eg. `"nodejs20"`, `"python39"`, `"dotnet3"`, `"go116"`, `"java11"`, `"ruby30"`, `"php74"`, etc. Check the [official doc](https://cloud.google.com/functions/docs/concepts/exec#runtimes) for the up-to-date list.
  ///
  /// - - -
  final Input<String> runtime;

  /// Secret environment variables configuration. Structure is documented below.
  final Input<List<FunctionSecretEnvironmentVariable>>?
      secretEnvironmentVariables;

  /// Secret volumes configuration. Structure is documented below.
  final Input<List<FunctionSecretVolume>>? secretVolumes;

  /// If provided, the self-provided service account to run the function with.
  final Input<String>? serviceAccountEmail;

  /// The GCS bucket containing the zip archive which contains the function.
  final Input<String>? sourceArchiveBucket;

  /// The source archive object (file) in archive bucket.
  final Input<String>? sourceArchiveObject;

  /// Represents parameters related to source repository where a function is hosted.
  /// Cannot be set alongside <span pulumi-lang-nodejs="`sourceArchiveBucket`" pulumi-lang-dotnet="`SourceArchiveBucket`" pulumi-lang-go="`sourceArchiveBucket`" pulumi-lang-python="`source_archive_bucket`" pulumi-lang-yaml="`sourceArchiveBucket`" pulumi-lang-java="`sourceArchiveBucket`">`source_archive_bucket`</span> or <span pulumi-lang-nodejs="`sourceArchiveObject`" pulumi-lang-dotnet="`SourceArchiveObject`" pulumi-lang-go="`sourceArchiveObject`" pulumi-lang-python="`source_archive_object`" pulumi-lang-yaml="`sourceArchiveObject`" pulumi-lang-java="`sourceArchiveObject`">`source_archive_object`</span>. Structure is documented below. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`.*
  final Input<FunctionSourceRepository>? sourceRepository;

  /// Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds.
  final Input<int>? timeout;

  /// Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as <span pulumi-lang-nodejs="`httpsTriggerUrl`" pulumi-lang-dotnet="`HttpsTriggerUrl`" pulumi-lang-go="`httpsTriggerUrl`" pulumi-lang-python="`https_trigger_url`" pulumi-lang-yaml="`httpsTriggerUrl`" pulumi-lang-java="`httpsTriggerUrl`">`https_trigger_url`</span>. Cannot be used with <span pulumi-lang-nodejs="`eventTrigger`" pulumi-lang-dotnet="`EventTrigger`" pulumi-lang-go="`eventTrigger`" pulumi-lang-python="`event_trigger`" pulumi-lang-yaml="`eventTrigger`" pulumi-lang-java="`eventTrigger`">`event_trigger`</span>.
  final Input<bool>? triggerHttp;

  /// The VPC Network Connector that this cloud function can connect to. It should be set up as fully-qualified URI. The format of this field is `projects/*/locations/*/connectors/*`.
  final Input<String>? vpcConnector;

  /// The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are `ALL_TRAFFIC` and `PRIVATE_RANGES_ONLY`. Defaults to `PRIVATE_RANGES_ONLY`. If unset, this field preserves the previously set value.
  final Input<String>? vpcConnectorEgressSettings;

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
      map['eventTrigger'] = Input.mapOptionalInputValue<FunctionEventTrigger,
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
      map['onDeployUpdatePolicy'] = Input.mapOptionalInputValue<
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
      map['secretEnvironmentVariables'] = Input.mapOptionalInputValue<
              List<FunctionSecretEnvironmentVariable>,
              List<Map<String, dynamic>>>(
          secretEnvironmentVariablesValue,
          (value) => Input.encodeList<FunctionSecretEnvironmentVariable,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final secretVolumesValue = secretVolumes;
    if (secretVolumesValue != null) {
      map['secretVolumes'] = Input.mapOptionalInputValue<
              List<FunctionSecretVolume>, List<Map<String, dynamic>>>(
          secretVolumesValue,
          (value) =>
              Input.encodeList<FunctionSecretVolume, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      map['sourceRepository'] = Input.mapOptionalInputValue<
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
      automaticUpdatePolicy: Input.asOptionalInput<Map<String, dynamic>>(
          map['automaticUpdatePolicy']),
      availableMemoryMb: Input.asOptionalInput<int>(map['availableMemoryMb']),
      buildEnvironmentVariables: Input.asOptionalInput<Map<String, String>>(
          map['buildEnvironmentVariables']),
      buildServiceAccount:
          Input.asOptionalInput<String>(map['buildServiceAccount']),
      buildWorkerPool: Input.asOptionalInput<String>(map['buildWorkerPool']),
      description: Input.asOptionalInput<String>(map['description']),
      dockerRegistry: Input.asOptionalInput<String>(map['dockerRegistry']),
      dockerRepository: Input.asOptionalInput<String>(map['dockerRepository']),
      entryPoint: Input.asOptionalInput<String>(map['entryPoint']),
      environmentVariables: Input.asOptionalInput<Map<String, String>>(
          map['environmentVariables']),
      eventTrigger:
          Input.asOptionalInput<FunctionEventTrigger>(map['eventTrigger']),
      httpsTriggerSecurityLevel:
          Input.asOptionalInput<String>(map['httpsTriggerSecurityLevel']),
      httpsTriggerUrl: Input.asOptionalInput<String>(map['httpsTriggerUrl']),
      ingressSettings: Input.asOptionalInput<String>(map['ingressSettings']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      maxInstances: Input.asOptionalInput<int>(map['maxInstances']),
      minInstances: Input.asOptionalInput<int>(map['minInstances']),
      name: Input.asOptionalInput<String>(map['name']),
      onDeployUpdatePolicy: Input.asOptionalInput<FunctionOnDeployUpdatePolicy>(
          map['onDeployUpdatePolicy']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      runtime: Input.asInput<String>(map['runtime']),
      secretEnvironmentVariables:
          Input.asOptionalInput<List<FunctionSecretEnvironmentVariable>>(
              map['secretEnvironmentVariables']),
      secretVolumes: Input.asOptionalInput<List<FunctionSecretVolume>>(
          map['secretVolumes']),
      serviceAccountEmail:
          Input.asOptionalInput<String>(map['serviceAccountEmail']),
      sourceArchiveBucket:
          Input.asOptionalInput<String>(map['sourceArchiveBucket']),
      sourceArchiveObject:
          Input.asOptionalInput<String>(map['sourceArchiveObject']),
      sourceRepository: Input.asOptionalInput<FunctionSourceRepository>(
          map['sourceRepository']),
      timeout: Input.asOptionalInput<int>(map['timeout']),
      triggerHttp: Input.asOptionalInput<bool>(map['triggerHttp']),
      vpcConnector: Input.asOptionalInput<String>(map['vpcConnector']),
      vpcConnectorEgressSettings:
          Input.asOptionalInput<String>(map['vpcConnectorEgressSettings']),
    );
  }
}
