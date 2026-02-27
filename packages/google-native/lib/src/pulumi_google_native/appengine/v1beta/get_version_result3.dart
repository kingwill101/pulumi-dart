// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'api_config_handler_response2.dart';
import 'automatic_scaling_response2.dart';
import 'basic_scaling_response2.dart';
import 'deployment_response2.dart';
import 'endpoints_api_service_response2.dart';
import 'entrypoint_response2.dart';
import 'error_handler_response2.dart';
import 'flexible_runtime_settings_response2.dart';
import 'health_check_response2.dart';
import 'library_response2.dart';
import 'liveness_check_response2.dart';
import 'manual_scaling_response2.dart';
import 'network_response2.dart';
import 'readiness_check_response2.dart';
import 'resources_response2.dart';
import 'url_map_response2.dart';
import 'vpc_access_connector_response2.dart';

/// Result data returned by getVersion.
class GetVersionResult3 {
  /// Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  final ApiConfigHandlerResponse2 apiConfig;

  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  final bool appEngineApis;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  final AutomaticScalingResponse2 automaticScaling;

  /// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  final BasicScalingResponse2 basicScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime features.
  final Map<String, String> betaSettings;

  /// Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  final Map<String, String> buildEnvVariables;

  /// Time that this version was created.
  final String createTime;

  /// Email address of the user who created this version.
  final String createdBy;

  /// Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  final String defaultExpiration;

  /// Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  final DeploymentResponse2 deployment;

  /// Total size in bytes of all the files that are included in this version and currently hosted on the App Engine disk.
  final String diskUsageBytes;

  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  final EndpointsApiServiceResponse2 endpointsApiService;

  /// The entrypoint for the application.
  final EntrypointResponse2 entrypoint;

  /// App Engine execution environment for this version.Defaults to standard.
  final String env;

  /// Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  final Map<String, String> envVariables;

  /// Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  final List<ErrorHandlerResponse2> errorHandlers;

  /// Settings for App Engine flexible runtimes.
  final FlexibleRuntimeSettingsResponse2 flexibleRuntimeSettings;

  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  final Map<String, String> generatedCustomerMetadata;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  final List<UrlMapResponse2> handlers;

  /// Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  final HealthCheckResponse2 healthCheck;

  /// Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  final List<String> inboundServices;

  /// Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  final String instanceClass;

  /// Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  final List<LibraryResponse2> libraries;

  /// Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  final LivenessCheckResponse2 livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  final ManualScalingResponse2 manualScaling;

  /// Full path to the Version resource in the API. Example: apps/myapp/services/default/versions/v1.
  final String name;

  /// Extra network settings. Only applicable in the App Engine flexible environment.
  final NetworkResponse2 network;

  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  final String nobuildFilesRegex;

  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  final ReadinessCheckResponse2 readinessCheck;

  /// Machine resources for this version. Only applicable in the App Engine flexible environment.
  final ResourcesResponse2 resources;

  /// Desired runtime. Example: python27.
  final String runtime;

  /// The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref
  final String runtimeApiVersion;

  /// The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.
  final String runtimeChannel;

  /// The path or name of the app's main executable.
  final String runtimeMainExecutablePath;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  final String serviceAccount;

  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
  final String servingStatus;

  /// Whether multiple requests can be dispatched to this version at once.
  final bool threadsafe;

  /// Serving URL for this version. Example: "https://myversion-dot-myservice-dot-myapp.appspot.com"
  final String versionUrl;

  /// Whether to deploy this version in a container on a virtual machine.
  final bool vm;

  /// Enables VPC connectivity for standard apps.
  final VpcAccessConnectorResponse2 vpcAccessConnector;

  /// The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  final List<String> zones;

  GetVersionResult3({
    required this.apiConfig,
    required this.appEngineApis,
    required this.automaticScaling,
    required this.basicScaling,
    required this.betaSettings,
    required this.buildEnvVariables,
    required this.createTime,
    required this.createdBy,
    required this.defaultExpiration,
    required this.deployment,
    required this.diskUsageBytes,
    required this.endpointsApiService,
    required this.entrypoint,
    required this.env,
    required this.envVariables,
    required this.errorHandlers,
    required this.flexibleRuntimeSettings,
    required this.generatedCustomerMetadata,
    required this.handlers,
    required this.healthCheck,
    required this.inboundServices,
    required this.instanceClass,
    required this.libraries,
    required this.livenessCheck,
    required this.manualScaling,
    required this.name,
    required this.network,
    required this.nobuildFilesRegex,
    required this.readinessCheck,
    required this.resources,
    required this.runtime,
    required this.runtimeApiVersion,
    required this.runtimeChannel,
    required this.runtimeMainExecutablePath,
    required this.serviceAccount,
    required this.servingStatus,
    required this.threadsafe,
    required this.versionUrl,
    required this.vm,
    required this.vpcAccessConnector,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiConfig'] = apiConfig.toMap();
    map['appEngineApis'] = appEngineApis;
    map['automaticScaling'] = automaticScaling.toMap();
    map['basicScaling'] = basicScaling.toMap();
    map['betaSettings'] = betaSettings;
    map['buildEnvVariables'] = buildEnvVariables;
    map['createTime'] = createTime;
    map['createdBy'] = createdBy;
    map['defaultExpiration'] = defaultExpiration;
    map['deployment'] = deployment.toMap();
    map['diskUsageBytes'] = diskUsageBytes;
    map['endpointsApiService'] = endpointsApiService.toMap();
    map['entrypoint'] = entrypoint.toMap();
    map['env'] = env;
    map['envVariables'] = envVariables;
    map['errorHandlers'] =
        Input.encodeList<ErrorHandlerResponse2, Map<String, dynamic>>(
            errorHandlers, (value) => value.toMap());
    map['flexibleRuntimeSettings'] = flexibleRuntimeSettings.toMap();
    map['generatedCustomerMetadata'] = generatedCustomerMetadata;
    map['handlers'] = Input.encodeList<UrlMapResponse2, Map<String, dynamic>>(
        handlers, (value) => value.toMap());
    map['healthCheck'] = healthCheck.toMap();
    map['inboundServices'] = inboundServices;
    map['instanceClass'] = instanceClass;
    map['libraries'] = Input.encodeList<LibraryResponse2, Map<String, dynamic>>(
        libraries, (value) => value.toMap());
    map['livenessCheck'] = livenessCheck.toMap();
    map['manualScaling'] = manualScaling.toMap();
    map['name'] = name;
    map['network'] = network.toMap();
    map['nobuildFilesRegex'] = nobuildFilesRegex;
    map['readinessCheck'] = readinessCheck.toMap();
    map['resources'] = resources.toMap();
    map['runtime'] = runtime;
    map['runtimeApiVersion'] = runtimeApiVersion;
    map['runtimeChannel'] = runtimeChannel;
    map['runtimeMainExecutablePath'] = runtimeMainExecutablePath;
    map['serviceAccount'] = serviceAccount;
    map['servingStatus'] = servingStatus;
    map['threadsafe'] = threadsafe;
    map['versionUrl'] = versionUrl;
    map['vm'] = vm;
    map['vpcAccessConnector'] = vpcAccessConnector.toMap();
    map['zones'] = zones;
    return map;
  }

  factory GetVersionResult3.fromMap(Map<String, dynamic> map) {
    return GetVersionResult3(
      apiConfig: ApiConfigHandlerResponse2.fromMap(
          (map['apiConfig'] as Map).cast<String, dynamic>()),
      appEngineApis: map['appEngineApis'] as bool,
      automaticScaling: AutomaticScalingResponse2.fromMap(
          (map['automaticScaling'] as Map).cast<String, dynamic>()),
      basicScaling: BasicScalingResponse2.fromMap(
          (map['basicScaling'] as Map).cast<String, dynamic>()),
      betaSettings: (map['betaSettings'] as Map).cast<String, String>(),
      buildEnvVariables:
          (map['buildEnvVariables'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      createdBy: map['createdBy'] as String,
      defaultExpiration: map['defaultExpiration'] as String,
      deployment: DeploymentResponse2.fromMap(
          (map['deployment'] as Map).cast<String, dynamic>()),
      diskUsageBytes: map['diskUsageBytes'] as String,
      endpointsApiService: EndpointsApiServiceResponse2.fromMap(
          (map['endpointsApiService'] as Map).cast<String, dynamic>()),
      entrypoint: EntrypointResponse2.fromMap(
          (map['entrypoint'] as Map).cast<String, dynamic>()),
      env: map['env'] as String,
      envVariables: (map['envVariables'] as Map).cast<String, String>(),
      errorHandlers: Input.decodeList<ErrorHandlerResponse2>(
          map['errorHandlers'],
          (value) => ErrorHandlerResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      flexibleRuntimeSettings: FlexibleRuntimeSettingsResponse2.fromMap(
          (map['flexibleRuntimeSettings'] as Map).cast<String, dynamic>()),
      generatedCustomerMetadata:
          (map['generatedCustomerMetadata'] as Map).cast<String, String>(),
      handlers: Input.decodeList<UrlMapResponse2>(
          map['handlers'],
          (value) =>
              UrlMapResponse2.fromMap((value as Map).cast<String, dynamic>())),
      healthCheck: HealthCheckResponse2.fromMap(
          (map['healthCheck'] as Map).cast<String, dynamic>()),
      inboundServices: (map['inboundServices'] as List).cast<String>(),
      instanceClass: map['instanceClass'] as String,
      libraries: Input.decodeList<LibraryResponse2>(
          map['libraries'],
          (value) =>
              LibraryResponse2.fromMap((value as Map).cast<String, dynamic>())),
      livenessCheck: LivenessCheckResponse2.fromMap(
          (map['livenessCheck'] as Map).cast<String, dynamic>()),
      manualScaling: ManualScalingResponse2.fromMap(
          (map['manualScaling'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      network: NetworkResponse2.fromMap(
          (map['network'] as Map).cast<String, dynamic>()),
      nobuildFilesRegex: map['nobuildFilesRegex'] as String,
      readinessCheck: ReadinessCheckResponse2.fromMap(
          (map['readinessCheck'] as Map).cast<String, dynamic>()),
      resources: ResourcesResponse2.fromMap(
          (map['resources'] as Map).cast<String, dynamic>()),
      runtime: map['runtime'] as String,
      runtimeApiVersion: map['runtimeApiVersion'] as String,
      runtimeChannel: map['runtimeChannel'] as String,
      runtimeMainExecutablePath: map['runtimeMainExecutablePath'] as String,
      serviceAccount: map['serviceAccount'] as String,
      servingStatus: map['servingStatus'] as String,
      threadsafe: map['threadsafe'] as bool,
      versionUrl: map['versionUrl'] as String,
      vm: map['vm'] as bool,
      vpcAccessConnector: VpcAccessConnectorResponse2.fromMap(
          (map['vpcAccessConnector'] as Map).cast<String, dynamic>()),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
