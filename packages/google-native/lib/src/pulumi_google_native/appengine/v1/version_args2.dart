// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'api_config_handler.dart';
import 'automatic_scaling.dart';
import 'basic_scaling.dart';
import 'deployment_type.dart';
import 'endpoints_api_service.dart';
import 'entrypoint.dart';
import 'error_handler.dart';
import 'flexible_runtime_settings.dart';
import 'health_check.dart';
import 'library.dart';
import 'liveness_check.dart';
import 'manual_scaling.dart';
import 'network.dart';
import 'readiness_check.dart';
import 'resources.dart';
import 'url_map.dart';
import 'version_inbound_services_item.dart';
import 'version_serving_status.dart';
import 'vpc_access_connector.dart';

/// The set of arguments for Version.
class VersionArgs2 {
  /// Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  final Input<ApiConfigHandler>? apiConfig;

  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  final Input<bool>? appEngineApis;
  final Input<String> appId;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  final Input<AutomaticScaling>? automaticScaling;

  /// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  final Input<BasicScaling>? basicScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime features.
  final Input<Map<String, String>>? betaSettings;

  /// Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  final Input<Map<String, String>>? buildEnvVariables;

  /// Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  final Input<String>? defaultExpiration;

  /// Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  final Input<DeploymentType>? deployment;

  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  final Input<EndpointsApiService>? endpointsApiService;

  /// The entrypoint for the application.
  final Input<Entrypoint>? entrypoint;

  /// App Engine execution environment for this version.Defaults to standard.
  final Input<String>? env;

  /// Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  final Input<Map<String, String>>? envVariables;

  /// Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  final Input<List<ErrorHandler>>? errorHandlers;

  /// Settings for App Engine flexible runtimes.
  final Input<FlexibleRuntimeSettings>? flexibleRuntimeSettings;

  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  final Input<Map<String, String>>? generatedCustomerMetadata;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  final Input<List<UrlMap>>? handlers;

  /// Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  final Input<HealthCheck>? healthCheck;

  /// Relative name of the version within the service. Example: v1. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names: "default", "latest", and any name with the prefix "ah-".
  final Input<String>? id;

  /// Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  final Input<List<VersionInboundServicesItem>>? inboundServices;

  /// Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  final Input<String>? instanceClass;

  /// Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  final Input<List<Library>>? libraries;

  /// Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  final Input<LivenessCheck>? livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  final Input<ManualScaling>? manualScaling;

  /// Extra network settings. Only applicable in the App Engine flexible environment.
  final Input<Network>? network;

  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  final Input<String>? nobuildFilesRegex;

  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  final Input<ReadinessCheck>? readinessCheck;

  /// Machine resources for this version. Only applicable in the App Engine flexible environment.
  final Input<Resources>? resources;

  /// Desired runtime. Example: python27.
  final Input<String>? runtime;

  /// The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref
  final Input<String>? runtimeApiVersion;

  /// The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.
  final Input<String>? runtimeChannel;

  /// The path or name of the app's main executable.
  final Input<String>? runtimeMainExecutablePath;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  final Input<String>? serviceAccount;
  final Input<String> serviceId;

  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
  final Input<VersionServingStatus>? servingStatus;

  /// Whether multiple requests can be dispatched to this version at once.
  final Input<bool>? threadsafe;

  /// Whether to deploy this version in a container on a virtual machine.
  final Input<bool>? vm;

  /// Enables VPC connectivity for standard apps.
  final Input<VpcAccessConnector>? vpcAccessConnector;

  /// The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  final Input<List<String>>? zones;

  VersionArgs2({
    this.apiConfig,
    this.appEngineApis,
    required this.appId,
    this.automaticScaling,
    this.basicScaling,
    this.betaSettings,
    this.buildEnvVariables,
    this.defaultExpiration,
    this.deployment,
    this.endpointsApiService,
    this.entrypoint,
    this.env,
    this.envVariables,
    this.errorHandlers,
    this.flexibleRuntimeSettings,
    this.generatedCustomerMetadata,
    this.handlers,
    this.healthCheck,
    this.id,
    this.inboundServices,
    this.instanceClass,
    this.libraries,
    this.livenessCheck,
    this.manualScaling,
    this.network,
    this.nobuildFilesRegex,
    this.readinessCheck,
    this.resources,
    this.runtime,
    this.runtimeApiVersion,
    this.runtimeChannel,
    this.runtimeMainExecutablePath,
    this.serviceAccount,
    required this.serviceId,
    this.servingStatus,
    this.threadsafe,
    this.vm,
    this.vpcAccessConnector,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiConfigValue = apiConfig;
    if (apiConfigValue != null) {
      map['apiConfig'] =
          Input.mapOptionalInputValue<ApiConfigHandler, Map<String, dynamic>>(
              apiConfigValue, (value) => value.toMap());
    }
    final appEngineApisValue = appEngineApis;
    if (appEngineApisValue != null) {
      map['appEngineApis'] = appEngineApisValue;
    }
    map['appId'] = appId;
    final automaticScalingValue = automaticScaling;
    if (automaticScalingValue != null) {
      map['automaticScaling'] =
          Input.mapOptionalInputValue<AutomaticScaling, Map<String, dynamic>>(
              automaticScalingValue, (value) => value.toMap());
    }
    final basicScalingValue = basicScaling;
    if (basicScalingValue != null) {
      map['basicScaling'] =
          Input.mapOptionalInputValue<BasicScaling, Map<String, dynamic>>(
              basicScalingValue, (value) => value.toMap());
    }
    final betaSettingsValue = betaSettings;
    if (betaSettingsValue != null) {
      map['betaSettings'] = betaSettingsValue;
    }
    final buildEnvVariablesValue = buildEnvVariables;
    if (buildEnvVariablesValue != null) {
      map['buildEnvVariables'] = buildEnvVariablesValue;
    }
    final defaultExpirationValue = defaultExpiration;
    if (defaultExpirationValue != null) {
      map['defaultExpiration'] = defaultExpirationValue;
    }
    final deploymentValue = deployment;
    if (deploymentValue != null) {
      map['deployment'] =
          Input.mapOptionalInputValue<DeploymentType, Map<String, dynamic>>(
              deploymentValue, (value) => value.toMap());
    }
    final endpointsApiServiceValue = endpointsApiService;
    if (endpointsApiServiceValue != null) {
      map['endpointsApiService'] = Input.mapOptionalInputValue<
              EndpointsApiService, Map<String, dynamic>>(
          endpointsApiServiceValue, (value) => value.toMap());
    }
    final entrypointValue = entrypoint;
    if (entrypointValue != null) {
      map['entrypoint'] =
          Input.mapOptionalInputValue<Entrypoint, Map<String, dynamic>>(
              entrypointValue, (value) => value.toMap());
    }
    final envValue = env;
    if (envValue != null) {
      map['env'] = envValue;
    }
    final envVariablesValue = envVariables;
    if (envVariablesValue != null) {
      map['envVariables'] = envVariablesValue;
    }
    final errorHandlersValue = errorHandlers;
    if (errorHandlersValue != null) {
      map['errorHandlers'] = Input.mapOptionalInputValue<List<ErrorHandler>,
              List<Map<String, dynamic>>>(
          errorHandlersValue,
          (value) => Input.encodeList<ErrorHandler, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final flexibleRuntimeSettingsValue = flexibleRuntimeSettings;
    if (flexibleRuntimeSettingsValue != null) {
      map['flexibleRuntimeSettings'] = Input.mapOptionalInputValue<
              FlexibleRuntimeSettings, Map<String, dynamic>>(
          flexibleRuntimeSettingsValue, (value) => value.toMap());
    }
    final generatedCustomerMetadataValue = generatedCustomerMetadata;
    if (generatedCustomerMetadataValue != null) {
      map['generatedCustomerMetadata'] = generatedCustomerMetadataValue;
    }
    final handlersValue = handlers;
    if (handlersValue != null) {
      map['handlers'] =
          Input.mapOptionalInputValue<List<UrlMap>, List<Map<String, dynamic>>>(
              handlersValue,
              (value) => Input.encodeList<UrlMap, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] =
          Input.mapOptionalInputValue<HealthCheck, Map<String, dynamic>>(
              healthCheckValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final inboundServicesValue = inboundServices;
    if (inboundServicesValue != null) {
      map['inboundServices'] = Input.mapOptionalInputValue<
              List<VersionInboundServicesItem>, List<String>>(
          inboundServicesValue,
          (value) => Input.encodeList<VersionInboundServicesItem, String>(
              value, (value) => value.value));
    }
    final instanceClassValue = instanceClass;
    if (instanceClassValue != null) {
      map['instanceClass'] = instanceClassValue;
    }
    final librariesValue = libraries;
    if (librariesValue != null) {
      map['libraries'] = Input.mapOptionalInputValue<List<Library>,
              List<Map<String, dynamic>>>(
          librariesValue,
          (value) => Input.encodeList<Library, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final livenessCheckValue = livenessCheck;
    if (livenessCheckValue != null) {
      map['livenessCheck'] =
          Input.mapOptionalInputValue<LivenessCheck, Map<String, dynamic>>(
              livenessCheckValue, (value) => value.toMap());
    }
    final manualScalingValue = manualScaling;
    if (manualScalingValue != null) {
      map['manualScaling'] =
          Input.mapOptionalInputValue<ManualScaling, Map<String, dynamic>>(
              manualScalingValue, (value) => value.toMap());
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] =
          Input.mapOptionalInputValue<Network, Map<String, dynamic>>(
              networkValue, (value) => value.toMap());
    }
    final nobuildFilesRegexValue = nobuildFilesRegex;
    if (nobuildFilesRegexValue != null) {
      map['nobuildFilesRegex'] = nobuildFilesRegexValue;
    }
    final readinessCheckValue = readinessCheck;
    if (readinessCheckValue != null) {
      map['readinessCheck'] =
          Input.mapOptionalInputValue<ReadinessCheck, Map<String, dynamic>>(
              readinessCheckValue, (value) => value.toMap());
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] =
          Input.mapOptionalInputValue<Resources, Map<String, dynamic>>(
              resourcesValue, (value) => value.toMap());
    }
    final runtimeValue = runtime;
    if (runtimeValue != null) {
      map['runtime'] = runtimeValue;
    }
    final runtimeApiVersionValue = runtimeApiVersion;
    if (runtimeApiVersionValue != null) {
      map['runtimeApiVersion'] = runtimeApiVersionValue;
    }
    final runtimeChannelValue = runtimeChannel;
    if (runtimeChannelValue != null) {
      map['runtimeChannel'] = runtimeChannelValue;
    }
    final runtimeMainExecutablePathValue = runtimeMainExecutablePath;
    if (runtimeMainExecutablePathValue != null) {
      map['runtimeMainExecutablePath'] = runtimeMainExecutablePathValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    map['serviceId'] = serviceId;
    final servingStatusValue = servingStatus;
    if (servingStatusValue != null) {
      map['servingStatus'] =
          Input.mapOptionalInputValue<VersionServingStatus, String>(
              servingStatusValue, (value) => value.value);
    }
    final threadsafeValue = threadsafe;
    if (threadsafeValue != null) {
      map['threadsafe'] = threadsafeValue;
    }
    final vmValue = vm;
    if (vmValue != null) {
      map['vm'] = vmValue;
    }
    final vpcAccessConnectorValue = vpcAccessConnector;
    if (vpcAccessConnectorValue != null) {
      map['vpcAccessConnector'] =
          Input.mapOptionalInputValue<VpcAccessConnector, Map<String, dynamic>>(
              vpcAccessConnectorValue, (value) => value.toMap());
    }
    final zonesValue = zones;
    if (zonesValue != null) {
      map['zones'] = zonesValue;
    }
    return map;
  }

  factory VersionArgs2.fromMap(Map<String, dynamic> map) {
    return VersionArgs2(
      apiConfig: Input.asOptionalInput<ApiConfigHandler>(map['apiConfig']),
      appEngineApis: Input.asOptionalInput<bool>(map['appEngineApis']),
      appId: Input.asInput<String>(map['appId']),
      automaticScaling:
          Input.asOptionalInput<AutomaticScaling>(map['automaticScaling']),
      basicScaling: Input.asOptionalInput<BasicScaling>(map['basicScaling']),
      betaSettings:
          Input.asOptionalInput<Map<String, String>>(map['betaSettings']),
      buildEnvVariables:
          Input.asOptionalInput<Map<String, String>>(map['buildEnvVariables']),
      defaultExpiration:
          Input.asOptionalInput<String>(map['defaultExpiration']),
      deployment: Input.asOptionalInput<DeploymentType>(map['deployment']),
      endpointsApiService: Input.asOptionalInput<EndpointsApiService>(
          map['endpointsApiService']),
      entrypoint: Input.asOptionalInput<Entrypoint>(map['entrypoint']),
      env: Input.asOptionalInput<String>(map['env']),
      envVariables:
          Input.asOptionalInput<Map<String, String>>(map['envVariables']),
      errorHandlers:
          Input.asOptionalInput<List<ErrorHandler>>(map['errorHandlers']),
      flexibleRuntimeSettings: Input.asOptionalInput<FlexibleRuntimeSettings>(
          map['flexibleRuntimeSettings']),
      generatedCustomerMetadata: Input.asOptionalInput<Map<String, String>>(
          map['generatedCustomerMetadata']),
      handlers: Input.asOptionalInput<List<UrlMap>>(map['handlers']),
      healthCheck: Input.asOptionalInput<HealthCheck>(map['healthCheck']),
      id: Input.asOptionalInput<String>(map['id']),
      inboundServices: Input.asOptionalInput<List<VersionInboundServicesItem>>(
          map['inboundServices']),
      instanceClass: Input.asOptionalInput<String>(map['instanceClass']),
      libraries: Input.asOptionalInput<List<Library>>(map['libraries']),
      livenessCheck: Input.asOptionalInput<LivenessCheck>(map['livenessCheck']),
      manualScaling: Input.asOptionalInput<ManualScaling>(map['manualScaling']),
      network: Input.asOptionalInput<Network>(map['network']),
      nobuildFilesRegex:
          Input.asOptionalInput<String>(map['nobuildFilesRegex']),
      readinessCheck:
          Input.asOptionalInput<ReadinessCheck>(map['readinessCheck']),
      resources: Input.asOptionalInput<Resources>(map['resources']),
      runtime: Input.asOptionalInput<String>(map['runtime']),
      runtimeApiVersion:
          Input.asOptionalInput<String>(map['runtimeApiVersion']),
      runtimeChannel: Input.asOptionalInput<String>(map['runtimeChannel']),
      runtimeMainExecutablePath:
          Input.asOptionalInput<String>(map['runtimeMainExecutablePath']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      serviceId: Input.asInput<String>(map['serviceId']),
      servingStatus:
          Input.asOptionalInput<VersionServingStatus>(map['servingStatus']),
      threadsafe: Input.asOptionalInput<bool>(map['threadsafe']),
      vm: Input.asOptionalInput<bool>(map['vm']),
      vpcAccessConnector:
          Input.asOptionalInput<VpcAccessConnector>(map['vpcAccessConnector']),
      zones: Input.asOptionalInput<List<String>>(map['zones']),
    );
  }
}
