// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../flexible_app_version_api_config/flexible_app_version_api_config.dart';
import '../flexible_app_version_automatic_scaling/flexible_app_version_automatic_scaling.dart';
import '../flexible_app_version_deployment/flexible_app_version_deployment.dart';
import '../flexible_app_version_endpoints_api_service/flexible_app_version_endpoints_api_service.dart';
import '../flexible_app_version_entrypoint/flexible_app_version_entrypoint.dart';
import '../flexible_app_version_flexible_runtime_settings/flexible_app_version_flexible_runtime_settings.dart';
import '../flexible_app_version_handler/flexible_app_version_handler.dart';
import '../flexible_app_version_liveness_check/flexible_app_version_liveness_check.dart';
import '../flexible_app_version_manual_scaling/flexible_app_version_manual_scaling.dart';
import '../flexible_app_version_network/flexible_app_version_network.dart';
import '../flexible_app_version_readiness_check/flexible_app_version_readiness_check.dart';
import '../flexible_app_version_resources/flexible_app_version_resources.dart';
import '../flexible_app_version_vpc_access_connector/flexible_app_version_vpc_access_connector.dart';

/// The set of arguments for FlexibleAppVersion.
class FlexibleAppVersionArgs {
  /// Serving configuration for Google Cloud Endpoints.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionApiConfig>? apiConfig;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionAutomaticScaling>? automaticScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime features.
  final pulumi.Input<Map<String, String>>? betaSettings;

  /// Duration that static files should be cached by web proxies and browsers.
  /// Only applicable if the corresponding StaticFilesHandler does not specify its own expiration time.
  final pulumi.Input<String>? defaultExpiration;

  /// If set to `true`, the service will be deleted if it is the last version.
  final pulumi.Input<bool>? deleteServiceOnDestroy;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionDeployment>? deployment;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionEndpointsApiService>?
      endpointsApiService;

  /// The entrypoint for the application.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionEntrypoint>? entrypoint;

  /// Environment variables available to the application.  As these are not returned in the API request, the provider will not detect any changes made outside of the config.
  final pulumi.Input<Map<String, String>>? envVariables;

  /// Runtime settings for App Engine flexible environment.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionFlexibleRuntimeSettings>?
      flexibleRuntimeSettings;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// The first matching URL handles the request and other request handlers are not attempted.
  /// Structure is documented below.
  final pulumi.Input<List<FlexibleAppVersionHandler>>? handlers;

  /// A list of the types of messages that this application is able to receive.
  /// Each value may be one of: `INBOUND_SERVICE_MAIL`, `INBOUND_SERVICE_MAIL_BOUNCE`, `INBOUND_SERVICE_XMPP_ERROR`, `INBOUND_SERVICE_XMPP_MESSAGE`, `INBOUND_SERVICE_XMPP_SUBSCRIBE`, `INBOUND_SERVICE_XMPP_PRESENCE`, `INBOUND_SERVICE_CHANNEL_PRESENCE`, `INBOUND_SERVICE_WARMUP`.
  final pulumi.Input<List<String>>? inboundServices;

  /// Instance class that is used to run this version. Valid values are
  /// AutomaticScaling: F1, F2, F4, F4_1G
  /// ManualScaling: B1, B2, B4, B8, B4_1G
  /// Defaults to F1 for AutomaticScaling and B1 for ManualScaling.
  final pulumi.Input<String>? instanceClass;

  /// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionLivenessCheck> livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionManualScaling>? manualScaling;

  /// Extra network settings
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionNetwork>? network;

  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.
  final pulumi.Input<String>? nobuildFilesRegex;

  /// If set to `true`, the application version will not be deleted.
  final pulumi.Input<bool>? noopOnDestroy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionReadinessCheck> readinessCheck;

  /// Machine resources for a version.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionResources>? resources;

  /// Desired runtime. Example python27.
  final pulumi.Input<String> runtime;

  /// The version of the API in the given runtime environment.
  /// Please see the app.yaml reference for valid values at `https://cloud.google.com/appengine/docs/standard/<language>/config/appref`\
  /// Substitute `<language>` with `python`, `java`, `php`, `ruby`, `go` or `nodejs`.
  final pulumi.Input<String>? runtimeApiVersion;

  /// The channel of the runtime to use. Only available for some runtimes.
  final pulumi.Input<String>? runtimeChannel;

  /// The path or name of the app's main executable.
  final pulumi.Input<String>? runtimeMainExecutablePath;

  /// AppEngine service resource. Can contain numbers, letters, and hyphens.
  final pulumi.Input<String> service;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as
  /// default if this field is neither provided in app.yaml file nor through CLI flag.
  final pulumi.Input<String>? serviceAccount;

  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.
  /// Default value is `SERVING`.
  /// Possible values are: `SERVING`, `STOPPED`.
  final pulumi.Input<String>? servingStatus;

  /// Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens.
  /// Reserved names,"default", "latest", and any name with the prefix "ah-".
  final pulumi.Input<String>? versionId;

  /// Enables VPC connectivity for standard apps.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionVpcAccessConnector>? vpcAccessConnector;

  FlexibleAppVersionArgs({
    this.apiConfig,
    this.automaticScaling,
    this.betaSettings,
    this.defaultExpiration,
    this.deleteServiceOnDestroy,
    this.deployment,
    this.endpointsApiService,
    this.entrypoint,
    this.envVariables,
    this.flexibleRuntimeSettings,
    this.handlers,
    this.inboundServices,
    this.instanceClass,
    required this.livenessCheck,
    this.manualScaling,
    this.network,
    this.nobuildFilesRegex,
    this.noopOnDestroy,
    this.project,
    required this.readinessCheck,
    this.resources,
    required this.runtime,
    this.runtimeApiVersion,
    this.runtimeChannel,
    this.runtimeMainExecutablePath,
    required this.service,
    this.serviceAccount,
    this.servingStatus,
    this.versionId,
    this.vpcAccessConnector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiConfigValue = apiConfig;
    if (apiConfigValue != null) {
      map['apiConfig'] = pulumi.Input.mapOptionalInputValue<
          FlexibleAppVersionApiConfig,
          Map<String, dynamic>>(apiConfigValue, (value) => value.toMap());
    }
    final automaticScalingValue = automaticScaling;
    if (automaticScalingValue != null) {
      map['automaticScaling'] = pulumi.Input.mapOptionalInputValue<
              FlexibleAppVersionAutomaticScaling, Map<String, dynamic>>(
          automaticScalingValue, (value) => value.toMap());
    }
    final betaSettingsValue = betaSettings;
    if (betaSettingsValue != null) {
      map['betaSettings'] = betaSettingsValue;
    }
    final defaultExpirationValue = defaultExpiration;
    if (defaultExpirationValue != null) {
      map['defaultExpiration'] = defaultExpirationValue;
    }
    final deleteServiceOnDestroyValue = deleteServiceOnDestroy;
    if (deleteServiceOnDestroyValue != null) {
      map['deleteServiceOnDestroy'] = deleteServiceOnDestroyValue;
    }
    final deploymentValue = deployment;
    if (deploymentValue != null) {
      map['deployment'] = pulumi.Input.mapOptionalInputValue<
          FlexibleAppVersionDeployment,
          Map<String, dynamic>>(deploymentValue, (value) => value.toMap());
    }
    final endpointsApiServiceValue = endpointsApiService;
    if (endpointsApiServiceValue != null) {
      map['endpointsApiService'] = pulumi.Input.mapOptionalInputValue<
              FlexibleAppVersionEndpointsApiService, Map<String, dynamic>>(
          endpointsApiServiceValue, (value) => value.toMap());
    }
    final entrypointValue = entrypoint;
    if (entrypointValue != null) {
      map['entrypoint'] = pulumi.Input.mapOptionalInputValue<
          FlexibleAppVersionEntrypoint,
          Map<String, dynamic>>(entrypointValue, (value) => value.toMap());
    }
    final envVariablesValue = envVariables;
    if (envVariablesValue != null) {
      map['envVariables'] = envVariablesValue;
    }
    final flexibleRuntimeSettingsValue = flexibleRuntimeSettings;
    if (flexibleRuntimeSettingsValue != null) {
      map['flexibleRuntimeSettings'] = pulumi.Input.mapOptionalInputValue<
              FlexibleAppVersionFlexibleRuntimeSettings, Map<String, dynamic>>(
          flexibleRuntimeSettingsValue, (value) => value.toMap());
    }
    final handlersValue = handlers;
    if (handlersValue != null) {
      map['handlers'] = pulumi.Input.mapOptionalInputValue<
              List<FlexibleAppVersionHandler>, List<Map<String, dynamic>>>(
          handlersValue,
          (value) => pulumi.Input.encodeList<FlexibleAppVersionHandler,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final inboundServicesValue = inboundServices;
    if (inboundServicesValue != null) {
      map['inboundServices'] = inboundServicesValue;
    }
    final instanceClassValue = instanceClass;
    if (instanceClassValue != null) {
      map['instanceClass'] = instanceClassValue;
    }
    map['livenessCheck'] = pulumi.Input.mapInputValue<
        FlexibleAppVersionLivenessCheck,
        Map<String, dynamic>>(livenessCheck, (value) => value.toMap());
    final manualScalingValue = manualScaling;
    if (manualScalingValue != null) {
      map['manualScaling'] = pulumi.Input.mapOptionalInputValue<
          FlexibleAppVersionManualScaling,
          Map<String, dynamic>>(manualScalingValue, (value) => value.toMap());
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = pulumi.Input.mapOptionalInputValue<
          FlexibleAppVersionNetwork,
          Map<String, dynamic>>(networkValue, (value) => value.toMap());
    }
    final nobuildFilesRegexValue = nobuildFilesRegex;
    if (nobuildFilesRegexValue != null) {
      map['nobuildFilesRegex'] = nobuildFilesRegexValue;
    }
    final noopOnDestroyValue = noopOnDestroy;
    if (noopOnDestroyValue != null) {
      map['noopOnDestroy'] = noopOnDestroyValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['readinessCheck'] = pulumi.Input.mapInputValue<
        FlexibleAppVersionReadinessCheck,
        Map<String, dynamic>>(readinessCheck, (value) => value.toMap());
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = pulumi.Input.mapOptionalInputValue<
          FlexibleAppVersionResources,
          Map<String, dynamic>>(resourcesValue, (value) => value.toMap());
    }
    map['runtime'] = runtime;
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
    map['service'] = service;
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final servingStatusValue = servingStatus;
    if (servingStatusValue != null) {
      map['servingStatus'] = servingStatusValue;
    }
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    final vpcAccessConnectorValue = vpcAccessConnector;
    if (vpcAccessConnectorValue != null) {
      map['vpcAccessConnector'] = pulumi.Input.mapOptionalInputValue<
              FlexibleAppVersionVpcAccessConnector, Map<String, dynamic>>(
          vpcAccessConnectorValue, (value) => value.toMap());
    }
    return map;
  }

  factory FlexibleAppVersionArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionArgs(
      apiConfig: pulumi.Input.asOptionalInput<FlexibleAppVersionApiConfig>(
          map['apiConfig']),
      automaticScaling:
          pulumi.Input.asOptionalInput<FlexibleAppVersionAutomaticScaling>(
              map['automaticScaling']),
      betaSettings: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['betaSettings']),
      defaultExpiration:
          pulumi.Input.asOptionalInput<String>(map['defaultExpiration']),
      deleteServiceOnDestroy:
          pulumi.Input.asOptionalInput<bool>(map['deleteServiceOnDestroy']),
      deployment: pulumi.Input.asOptionalInput<FlexibleAppVersionDeployment>(
          map['deployment']),
      endpointsApiService:
          pulumi.Input.asOptionalInput<FlexibleAppVersionEndpointsApiService>(
              map['endpointsApiService']),
      entrypoint: pulumi.Input.asOptionalInput<FlexibleAppVersionEntrypoint>(
          map['entrypoint']),
      envVariables: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['envVariables']),
      flexibleRuntimeSettings: pulumi.Input.asOptionalInput<
              FlexibleAppVersionFlexibleRuntimeSettings>(
          map['flexibleRuntimeSettings']),
      handlers: pulumi.Input.asOptionalInput<List<FlexibleAppVersionHandler>>(
          map['handlers']),
      inboundServices:
          pulumi.Input.asOptionalInput<List<String>>(map['inboundServices']),
      instanceClass: pulumi.Input.asOptionalInput<String>(map['instanceClass']),
      livenessCheck: pulumi.Input.asInput<FlexibleAppVersionLivenessCheck>(
          map['livenessCheck']),
      manualScaling:
          pulumi.Input.asOptionalInput<FlexibleAppVersionManualScaling>(
              map['manualScaling']),
      network: pulumi.Input.asOptionalInput<FlexibleAppVersionNetwork>(
          map['network']),
      nobuildFilesRegex:
          pulumi.Input.asOptionalInput<String>(map['nobuildFilesRegex']),
      noopOnDestroy: pulumi.Input.asOptionalInput<bool>(map['noopOnDestroy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      readinessCheck: pulumi.Input.asInput<FlexibleAppVersionReadinessCheck>(
          map['readinessCheck']),
      resources: pulumi.Input.asOptionalInput<FlexibleAppVersionResources>(
          map['resources']),
      runtime: pulumi.Input.asInput<String>(map['runtime']),
      runtimeApiVersion:
          pulumi.Input.asOptionalInput<String>(map['runtimeApiVersion']),
      runtimeChannel:
          pulumi.Input.asOptionalInput<String>(map['runtimeChannel']),
      runtimeMainExecutablePath: pulumi.Input.asOptionalInput<String>(
          map['runtimeMainExecutablePath']),
      service: pulumi.Input.asInput<String>(map['service']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      servingStatus: pulumi.Input.asOptionalInput<String>(map['servingStatus']),
      versionId: pulumi.Input.asOptionalInput<String>(map['versionId']),
      vpcAccessConnector:
          pulumi.Input.asOptionalInput<FlexibleAppVersionVpcAccessConnector>(
              map['vpcAccessConnector']),
    );
  }
}
