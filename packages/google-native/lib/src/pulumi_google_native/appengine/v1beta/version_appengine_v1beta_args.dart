// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_handler_appengine_v1beta.dart';
import 'automatic_scaling_appengine_v1beta.dart';
import 'basic_scaling_appengine_v1beta.dart';
import 'deployment_appengine_v1beta.dart';
import 'endpoints_api_service_appengine_v1beta.dart';
import 'entrypoint_appengine_v1beta.dart';
import 'error_handler_appengine_v1beta.dart';
import 'flexible_runtime_settings_appengine_v1beta.dart';
import 'health_check_appengine_v1beta.dart';
import 'library_appengine_v1beta.dart';
import 'liveness_check_appengine_v1beta.dart';
import 'manual_scaling_appengine_v1beta.dart';
import 'network_appengine_v1beta.dart';
import 'readiness_check_appengine_v1beta.dart';
import 'resources_appengine_v1beta.dart';
import 'url_map_appengine_v1beta.dart';
import 'version_inbound_services_item_appengine_v1beta.dart';
import 'version_serving_status_appengine_v1beta.dart';
import 'vpc_access_connector_appengine_v1beta.dart';

/// The set of arguments for Version.
class VersionAppengineV1betaArgs {
  /// Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  final pulumi.Input<ApiConfigHandlerAppengineV1beta>? apiConfig;

  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  final pulumi.Input<bool>? appEngineApis;
  final pulumi.Input<String> appId;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  final pulumi.Input<AutomaticScalingAppengineV1beta>? automaticScaling;

  /// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  final pulumi.Input<BasicScalingAppengineV1beta>? basicScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime features.
  final pulumi.Input<Map<String, String>>? betaSettings;

  /// Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<Map<String, String>>? buildEnvVariables;

  /// Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<String>? defaultExpiration;

  /// Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<DeploymentAppengineV1beta>? deployment;

  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  final pulumi.Input<EndpointsApiServiceAppengineV1beta>? endpointsApiService;

  /// The entrypoint for the application.
  final pulumi.Input<EntrypointAppengineV1beta>? entrypoint;

  /// App Engine execution environment for this version.Defaults to standard.
  final pulumi.Input<String>? env;

  /// Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<Map<String, String>>? envVariables;

  /// Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<List<ErrorHandlerAppengineV1beta>>? errorHandlers;

  /// Settings for App Engine flexible runtimes.
  final pulumi.Input<FlexibleRuntimeSettingsAppengineV1beta>?
      flexibleRuntimeSettings;

  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  final pulumi.Input<Map<String, String>>? generatedCustomerMetadata;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<List<UrlMapAppengineV1beta>>? handlers;

  /// Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  final pulumi.Input<HealthCheckAppengineV1beta>? healthCheck;

  /// Relative name of the version within the service. Example: v1. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names: "default", "latest", and any name with the prefix "ah-".
  final pulumi.Input<String>? id;

  /// Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  final pulumi.Input<List<VersionInboundServicesItemAppengineV1beta>>?
      inboundServices;

  /// Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  final pulumi.Input<String>? instanceClass;

  /// Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<List<LibraryAppengineV1beta>>? libraries;

  /// Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  final pulumi.Input<LivenessCheckAppengineV1beta>? livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  final pulumi.Input<ManualScalingAppengineV1beta>? manualScaling;

  /// Extra network settings. Only applicable in the App Engine flexible environment.
  final pulumi.Input<NetworkAppengineV1beta>? network;

  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<String>? nobuildFilesRegex;

  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  final pulumi.Input<ReadinessCheckAppengineV1beta>? readinessCheck;

  /// Machine resources for this version. Only applicable in the App Engine flexible environment.
  final pulumi.Input<ResourcesAppengineV1beta>? resources;

  /// Desired runtime. Example: python27.
  final pulumi.Input<String>? runtime;

  /// The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref
  final pulumi.Input<String>? runtimeApiVersion;

  /// The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.
  final pulumi.Input<String>? runtimeChannel;

  /// The path or name of the app's main executable.
  final pulumi.Input<String>? runtimeMainExecutablePath;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  final pulumi.Input<String>? serviceAccount;
  final pulumi.Input<String> serviceId;

  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
  final pulumi.Input<VersionServingStatusAppengineV1beta>? servingStatus;

  /// Whether multiple requests can be dispatched to this version at once.
  final pulumi.Input<bool>? threadsafe;

  /// Whether to deploy this version in a container on a virtual machine.
  final pulumi.Input<bool>? vm;

  /// Enables VPC connectivity for standard apps.
  final pulumi.Input<VpcAccessConnectorAppengineV1beta>? vpcAccessConnector;

  /// The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  final pulumi.Input<List<String>>? zones;

  VersionAppengineV1betaArgs({
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
      map['apiConfig'] = pulumi.Input.mapOptionalInputValue<
          ApiConfigHandlerAppengineV1beta,
          Map<String, dynamic>>(apiConfigValue, (value) => value.toMap());
    }
    final appEngineApisValue = appEngineApis;
    if (appEngineApisValue != null) {
      map['appEngineApis'] = appEngineApisValue;
    }
    map['appId'] = appId;
    final automaticScalingValue = automaticScaling;
    if (automaticScalingValue != null) {
      map['automaticScaling'] = pulumi.Input.mapOptionalInputValue<
              AutomaticScalingAppengineV1beta, Map<String, dynamic>>(
          automaticScalingValue, (value) => value.toMap());
    }
    final basicScalingValue = basicScaling;
    if (basicScalingValue != null) {
      map['basicScaling'] = pulumi.Input.mapOptionalInputValue<
          BasicScalingAppengineV1beta,
          Map<String, dynamic>>(basicScalingValue, (value) => value.toMap());
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
      map['deployment'] = pulumi.Input.mapOptionalInputValue<
          DeploymentAppengineV1beta,
          Map<String, dynamic>>(deploymentValue, (value) => value.toMap());
    }
    final endpointsApiServiceValue = endpointsApiService;
    if (endpointsApiServiceValue != null) {
      map['endpointsApiService'] = pulumi.Input.mapOptionalInputValue<
              EndpointsApiServiceAppengineV1beta, Map<String, dynamic>>(
          endpointsApiServiceValue, (value) => value.toMap());
    }
    final entrypointValue = entrypoint;
    if (entrypointValue != null) {
      map['entrypoint'] = pulumi.Input.mapOptionalInputValue<
          EntrypointAppengineV1beta,
          Map<String, dynamic>>(entrypointValue, (value) => value.toMap());
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
      map['errorHandlers'] = pulumi.Input.mapOptionalInputValue<
              List<ErrorHandlerAppengineV1beta>, List<Map<String, dynamic>>>(
          errorHandlersValue,
          (value) => pulumi.Input.encodeList<ErrorHandlerAppengineV1beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final flexibleRuntimeSettingsValue = flexibleRuntimeSettings;
    if (flexibleRuntimeSettingsValue != null) {
      map['flexibleRuntimeSettings'] = pulumi.Input.mapOptionalInputValue<
              FlexibleRuntimeSettingsAppengineV1beta, Map<String, dynamic>>(
          flexibleRuntimeSettingsValue, (value) => value.toMap());
    }
    final generatedCustomerMetadataValue = generatedCustomerMetadata;
    if (generatedCustomerMetadataValue != null) {
      map['generatedCustomerMetadata'] = generatedCustomerMetadataValue;
    }
    final handlersValue = handlers;
    if (handlersValue != null) {
      map['handlers'] = pulumi.Input.mapOptionalInputValue<
              List<UrlMapAppengineV1beta>, List<Map<String, dynamic>>>(
          handlersValue,
          (value) => pulumi.Input.encodeList<UrlMapAppengineV1beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] = pulumi.Input.mapOptionalInputValue<
          HealthCheckAppengineV1beta,
          Map<String, dynamic>>(healthCheckValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final inboundServicesValue = inboundServices;
    if (inboundServicesValue != null) {
      map['inboundServices'] = pulumi.Input.mapOptionalInputValue<
              List<VersionInboundServicesItemAppengineV1beta>, List<String>>(
          inboundServicesValue,
          (value) => pulumi.Input.encodeList<
              VersionInboundServicesItemAppengineV1beta,
              String>(value, (value) => value.value));
    }
    final instanceClassValue = instanceClass;
    if (instanceClassValue != null) {
      map['instanceClass'] = instanceClassValue;
    }
    final librariesValue = libraries;
    if (librariesValue != null) {
      map['libraries'] = pulumi.Input.mapOptionalInputValue<
              List<LibraryAppengineV1beta>, List<Map<String, dynamic>>>(
          librariesValue,
          (value) => pulumi.Input.encodeList<LibraryAppengineV1beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final livenessCheckValue = livenessCheck;
    if (livenessCheckValue != null) {
      map['livenessCheck'] = pulumi.Input.mapOptionalInputValue<
          LivenessCheckAppengineV1beta,
          Map<String, dynamic>>(livenessCheckValue, (value) => value.toMap());
    }
    final manualScalingValue = manualScaling;
    if (manualScalingValue != null) {
      map['manualScaling'] = pulumi.Input.mapOptionalInputValue<
          ManualScalingAppengineV1beta,
          Map<String, dynamic>>(manualScalingValue, (value) => value.toMap());
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = pulumi.Input.mapOptionalInputValue<
          NetworkAppengineV1beta,
          Map<String, dynamic>>(networkValue, (value) => value.toMap());
    }
    final nobuildFilesRegexValue = nobuildFilesRegex;
    if (nobuildFilesRegexValue != null) {
      map['nobuildFilesRegex'] = nobuildFilesRegexValue;
    }
    final readinessCheckValue = readinessCheck;
    if (readinessCheckValue != null) {
      map['readinessCheck'] = pulumi.Input.mapOptionalInputValue<
          ReadinessCheckAppengineV1beta,
          Map<String, dynamic>>(readinessCheckValue, (value) => value.toMap());
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = pulumi.Input.mapOptionalInputValue<
          ResourcesAppengineV1beta,
          Map<String, dynamic>>(resourcesValue, (value) => value.toMap());
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
      map['servingStatus'] = pulumi.Input.mapOptionalInputValue<
          VersionServingStatusAppengineV1beta,
          String>(servingStatusValue, (value) => value.value);
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
      map['vpcAccessConnector'] = pulumi.Input.mapOptionalInputValue<
              VpcAccessConnectorAppengineV1beta, Map<String, dynamic>>(
          vpcAccessConnectorValue, (value) => value.toMap());
    }
    final zonesValue = zones;
    if (zonesValue != null) {
      map['zones'] = zonesValue;
    }
    return map;
  }

  factory VersionAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return VersionAppengineV1betaArgs(
      apiConfig: pulumi.Input.asOptionalInput<ApiConfigHandlerAppengineV1beta>(
          map['apiConfig']),
      appEngineApis: pulumi.Input.asOptionalInput<bool>(map['appEngineApis']),
      appId: pulumi.Input.asInput<String>(map['appId']),
      automaticScaling:
          pulumi.Input.asOptionalInput<AutomaticScalingAppengineV1beta>(
              map['automaticScaling']),
      basicScaling: pulumi.Input.asOptionalInput<BasicScalingAppengineV1beta>(
          map['basicScaling']),
      betaSettings: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['betaSettings']),
      buildEnvVariables: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['buildEnvVariables']),
      defaultExpiration:
          pulumi.Input.asOptionalInput<String>(map['defaultExpiration']),
      deployment: pulumi.Input.asOptionalInput<DeploymentAppengineV1beta>(
          map['deployment']),
      endpointsApiService:
          pulumi.Input.asOptionalInput<EndpointsApiServiceAppengineV1beta>(
              map['endpointsApiService']),
      entrypoint: pulumi.Input.asOptionalInput<EntrypointAppengineV1beta>(
          map['entrypoint']),
      env: pulumi.Input.asOptionalInput<String>(map['env']),
      envVariables: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['envVariables']),
      errorHandlers:
          pulumi.Input.asOptionalInput<List<ErrorHandlerAppengineV1beta>>(
              map['errorHandlers']),
      flexibleRuntimeSettings:
          pulumi.Input.asOptionalInput<FlexibleRuntimeSettingsAppengineV1beta>(
              map['flexibleRuntimeSettings']),
      generatedCustomerMetadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['generatedCustomerMetadata']),
      handlers: pulumi.Input.asOptionalInput<List<UrlMapAppengineV1beta>>(
          map['handlers']),
      healthCheck: pulumi.Input.asOptionalInput<HealthCheckAppengineV1beta>(
          map['healthCheck']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      inboundServices: pulumi.Input.asOptionalInput<
              List<VersionInboundServicesItemAppengineV1beta>>(
          map['inboundServices']),
      instanceClass: pulumi.Input.asOptionalInput<String>(map['instanceClass']),
      libraries: pulumi.Input.asOptionalInput<List<LibraryAppengineV1beta>>(
          map['libraries']),
      livenessCheck: pulumi.Input.asOptionalInput<LivenessCheckAppengineV1beta>(
          map['livenessCheck']),
      manualScaling: pulumi.Input.asOptionalInput<ManualScalingAppengineV1beta>(
          map['manualScaling']),
      network:
          pulumi.Input.asOptionalInput<NetworkAppengineV1beta>(map['network']),
      nobuildFilesRegex:
          pulumi.Input.asOptionalInput<String>(map['nobuildFilesRegex']),
      readinessCheck:
          pulumi.Input.asOptionalInput<ReadinessCheckAppengineV1beta>(
              map['readinessCheck']),
      resources: pulumi.Input.asOptionalInput<ResourcesAppengineV1beta>(
          map['resources']),
      runtime: pulumi.Input.asOptionalInput<String>(map['runtime']),
      runtimeApiVersion:
          pulumi.Input.asOptionalInput<String>(map['runtimeApiVersion']),
      runtimeChannel:
          pulumi.Input.asOptionalInput<String>(map['runtimeChannel']),
      runtimeMainExecutablePath: pulumi.Input.asOptionalInput<String>(
          map['runtimeMainExecutablePath']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
      servingStatus:
          pulumi.Input.asOptionalInput<VersionServingStatusAppengineV1beta>(
              map['servingStatus']),
      threadsafe: pulumi.Input.asOptionalInput<bool>(map['threadsafe']),
      vm: pulumi.Input.asOptionalInput<bool>(map['vm']),
      vpcAccessConnector:
          pulumi.Input.asOptionalInput<VpcAccessConnectorAppengineV1beta>(
              map['vpcAccessConnector']),
      zones: pulumi.Input.asOptionalInput<List<String>>(map['zones']),
    );
  }
}
