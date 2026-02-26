// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  final Input<FlexibleAppVersionApiConfig>? apiConfig;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// Structure is documented below.
  final Input<FlexibleAppVersionAutomaticScaling>? automaticScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime features.
  final Input<Map<String, String>>? betaSettings;

  /// Duration that static files should be cached by web proxies and browsers.
  /// Only applicable if the corresponding StaticFilesHandler does not specify its own expiration time.
  final Input<String>? defaultExpiration;

  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the service will be deleted if it is the last version.
  final Input<bool>? deleteServiceOnDestroy;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  final Input<FlexibleAppVersionDeployment>? deployment;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  final Input<FlexibleAppVersionEndpointsApiService>? endpointsApiService;

  /// The entrypoint for the application.
  /// Structure is documented below.
  final Input<FlexibleAppVersionEntrypoint>? entrypoint;

  /// Environment variables available to the application.  As these are not returned in the API request, the provider will not detect any changes made outside of the config.
  final Input<Map<String, String>>? envVariables;

  /// Runtime settings for App Engine flexible environment.
  /// Structure is documented below.
  final Input<FlexibleAppVersionFlexibleRuntimeSettings>?
      flexibleRuntimeSettings;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// The first matching URL handles the request and other request handlers are not attempted.
  /// Structure is documented below.
  final Input<List<FlexibleAppVersionHandler>>? handlers;

  /// A list of the types of messages that this application is able to receive.
  /// Each value may be one of: `INBOUND_SERVICE_MAIL`, `INBOUND_SERVICE_MAIL_BOUNCE`, `INBOUND_SERVICE_XMPP_ERROR`, `INBOUND_SERVICE_XMPP_MESSAGE`, `INBOUND_SERVICE_XMPP_SUBSCRIBE`, `INBOUND_SERVICE_XMPP_PRESENCE`, `INBOUND_SERVICE_CHANNEL_PRESENCE`, `INBOUND_SERVICE_WARMUP`.
  final Input<List<String>>? inboundServices;

  /// Instance class that is used to run this version. Valid values are
  /// AutomaticScaling: F1, F2, F4, F4_1G
  /// ManualScaling: B1, B2, B4, B8, B4_1G
  /// Defaults to F1 for AutomaticScaling and B1 for ManualScaling.
  final Input<String>? instanceClass;

  /// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
  /// Structure is documented below.
  final Input<FlexibleAppVersionLivenessCheck> livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final Input<FlexibleAppVersionManualScaling>? manualScaling;

  /// Extra network settings
  /// Structure is documented below.
  final Input<FlexibleAppVersionNetwork>? network;

  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.
  final Input<String>? nobuildFilesRegex;

  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the application version will not be deleted.
  final Input<bool>? noopOnDestroy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  /// Structure is documented below.
  final Input<FlexibleAppVersionReadinessCheck> readinessCheck;

  /// Machine resources for a version.
  /// Structure is documented below.
  final Input<FlexibleAppVersionResources>? resources;

  /// Desired runtime. Example python27.
  final Input<String> runtime;

  /// The version of the API in the given runtime environment.
  /// Please see the app.yaml reference for valid values at `https://cloud.google.com/appengine/docs/standard/<language>/config/appref`\
  /// Substitute `<language>` with <span pulumi-lang-nodejs="`python`" pulumi-lang-dotnet="`Python`" pulumi-lang-go="`python`" pulumi-lang-python="`python`" pulumi-lang-yaml="`python`" pulumi-lang-java="`python`">`python`</span>, <span pulumi-lang-nodejs="`java`" pulumi-lang-dotnet="`Java`" pulumi-lang-go="`java`" pulumi-lang-python="`java`" pulumi-lang-yaml="`java`" pulumi-lang-java="`java`">`java`</span>, <span pulumi-lang-nodejs="`php`" pulumi-lang-dotnet="`Php`" pulumi-lang-go="`php`" pulumi-lang-python="`php`" pulumi-lang-yaml="`php`" pulumi-lang-java="`php`">`php`</span>, <span pulumi-lang-nodejs="`ruby`" pulumi-lang-dotnet="`Ruby`" pulumi-lang-go="`ruby`" pulumi-lang-python="`ruby`" pulumi-lang-yaml="`ruby`" pulumi-lang-java="`ruby`">`ruby`</span>, <span pulumi-lang-nodejs="`go`" pulumi-lang-dotnet="`Go`" pulumi-lang-go="`go`" pulumi-lang-python="`go`" pulumi-lang-yaml="`go`" pulumi-lang-java="`go`">`go`</span> or <span pulumi-lang-nodejs="`nodejs`" pulumi-lang-dotnet="`Nodejs`" pulumi-lang-go="`nodejs`" pulumi-lang-python="`nodejs`" pulumi-lang-yaml="`nodejs`" pulumi-lang-java="`nodejs`">`nodejs`</span>.
  final Input<String>? runtimeApiVersion;

  /// The channel of the runtime to use. Only available for some runtimes.
  final Input<String>? runtimeChannel;

  /// The path or name of the app's main executable.
  final Input<String>? runtimeMainExecutablePath;

  /// AppEngine service resource. Can contain numbers, letters, and hyphens.
  final Input<String> service;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as
  /// default if this field is neither provided in app.yaml file nor through CLI flag.
  final Input<String>? serviceAccount;

  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.
  /// Default value is `SERVING`.
  /// Possible values are: `SERVING`, `STOPPED`.
  final Input<String>? servingStatus;

  /// Relative name of the version within the service. For example, <span pulumi-lang-nodejs="`v1`" pulumi-lang-dotnet="`V1`" pulumi-lang-go="`v1`" pulumi-lang-python="`v1`" pulumi-lang-yaml="`v1`" pulumi-lang-java="`v1`">`v1`</span>. Version names can contain only lowercase letters, numbers, or hyphens.
  /// Reserved names,"default", "latest", and any name with the prefix "ah-".
  final Input<String>? versionId;

  /// Enables VPC connectivity for standard apps.
  /// Structure is documented below.
  final Input<FlexibleAppVersionVpcAccessConnector>? vpcAccessConnector;

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
      map['apiConfig'] = Input.mapOptionalInputValue<
          FlexibleAppVersionApiConfig,
          Map<String, dynamic>>(apiConfigValue, (value) => value.toMap());
    }
    final automaticScalingValue = automaticScaling;
    if (automaticScalingValue != null) {
      map['automaticScaling'] = Input.mapOptionalInputValue<
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
      map['deployment'] = Input.mapOptionalInputValue<
          FlexibleAppVersionDeployment,
          Map<String, dynamic>>(deploymentValue, (value) => value.toMap());
    }
    final endpointsApiServiceValue = endpointsApiService;
    if (endpointsApiServiceValue != null) {
      map['endpointsApiService'] = Input.mapOptionalInputValue<
              FlexibleAppVersionEndpointsApiService, Map<String, dynamic>>(
          endpointsApiServiceValue, (value) => value.toMap());
    }
    final entrypointValue = entrypoint;
    if (entrypointValue != null) {
      map['entrypoint'] = Input.mapOptionalInputValue<
          FlexibleAppVersionEntrypoint,
          Map<String, dynamic>>(entrypointValue, (value) => value.toMap());
    }
    final envVariablesValue = envVariables;
    if (envVariablesValue != null) {
      map['envVariables'] = envVariablesValue;
    }
    final flexibleRuntimeSettingsValue = flexibleRuntimeSettings;
    if (flexibleRuntimeSettingsValue != null) {
      map['flexibleRuntimeSettings'] = Input.mapOptionalInputValue<
              FlexibleAppVersionFlexibleRuntimeSettings, Map<String, dynamic>>(
          flexibleRuntimeSettingsValue, (value) => value.toMap());
    }
    final handlersValue = handlers;
    if (handlersValue != null) {
      map['handlers'] = Input.mapOptionalInputValue<
              List<FlexibleAppVersionHandler>, List<Map<String, dynamic>>>(
          handlersValue,
          (value) =>
              Input.encodeList<FlexibleAppVersionHandler, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final inboundServicesValue = inboundServices;
    if (inboundServicesValue != null) {
      map['inboundServices'] = inboundServicesValue;
    }
    final instanceClassValue = instanceClass;
    if (instanceClassValue != null) {
      map['instanceClass'] = instanceClassValue;
    }
    map['livenessCheck'] = Input.mapInputValue<FlexibleAppVersionLivenessCheck,
        Map<String, dynamic>>(livenessCheck, (value) => value.toMap());
    final manualScalingValue = manualScaling;
    if (manualScalingValue != null) {
      map['manualScaling'] = Input.mapOptionalInputValue<
          FlexibleAppVersionManualScaling,
          Map<String, dynamic>>(manualScalingValue, (value) => value.toMap());
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = Input.mapOptionalInputValue<FlexibleAppVersionNetwork,
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
    map['readinessCheck'] = Input.mapInputValue<
        FlexibleAppVersionReadinessCheck,
        Map<String, dynamic>>(readinessCheck, (value) => value.toMap());
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = Input.mapOptionalInputValue<
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
      map['vpcAccessConnector'] = Input.mapOptionalInputValue<
              FlexibleAppVersionVpcAccessConnector, Map<String, dynamic>>(
          vpcAccessConnectorValue, (value) => value.toMap());
    }
    return map;
  }

  factory FlexibleAppVersionArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionArgs(
      apiConfig:
          Input.asOptionalInput<FlexibleAppVersionApiConfig>(map['apiConfig']),
      automaticScaling:
          Input.asOptionalInput<FlexibleAppVersionAutomaticScaling>(
              map['automaticScaling']),
      betaSettings:
          Input.asOptionalInput<Map<String, String>>(map['betaSettings']),
      defaultExpiration:
          Input.asOptionalInput<String>(map['defaultExpiration']),
      deleteServiceOnDestroy:
          Input.asOptionalInput<bool>(map['deleteServiceOnDestroy']),
      deployment: Input.asOptionalInput<FlexibleAppVersionDeployment>(
          map['deployment']),
      endpointsApiService:
          Input.asOptionalInput<FlexibleAppVersionEndpointsApiService>(
              map['endpointsApiService']),
      entrypoint: Input.asOptionalInput<FlexibleAppVersionEntrypoint>(
          map['entrypoint']),
      envVariables:
          Input.asOptionalInput<Map<String, String>>(map['envVariables']),
      flexibleRuntimeSettings:
          Input.asOptionalInput<FlexibleAppVersionFlexibleRuntimeSettings>(
              map['flexibleRuntimeSettings']),
      handlers: Input.asOptionalInput<List<FlexibleAppVersionHandler>>(
          map['handlers']),
      inboundServices:
          Input.asOptionalInput<List<String>>(map['inboundServices']),
      instanceClass: Input.asOptionalInput<String>(map['instanceClass']),
      livenessCheck:
          Input.asInput<FlexibleAppVersionLivenessCheck>(map['livenessCheck']),
      manualScaling: Input.asOptionalInput<FlexibleAppVersionManualScaling>(
          map['manualScaling']),
      network: Input.asOptionalInput<FlexibleAppVersionNetwork>(map['network']),
      nobuildFilesRegex:
          Input.asOptionalInput<String>(map['nobuildFilesRegex']),
      noopOnDestroy: Input.asOptionalInput<bool>(map['noopOnDestroy']),
      project: Input.asOptionalInput<String>(map['project']),
      readinessCheck: Input.asInput<FlexibleAppVersionReadinessCheck>(
          map['readinessCheck']),
      resources:
          Input.asOptionalInput<FlexibleAppVersionResources>(map['resources']),
      runtime: Input.asInput<String>(map['runtime']),
      runtimeApiVersion:
          Input.asOptionalInput<String>(map['runtimeApiVersion']),
      runtimeChannel: Input.asOptionalInput<String>(map['runtimeChannel']),
      runtimeMainExecutablePath:
          Input.asOptionalInput<String>(map['runtimeMainExecutablePath']),
      service: Input.asInput<String>(map['service']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      servingStatus: Input.asOptionalInput<String>(map['servingStatus']),
      versionId: Input.asOptionalInput<String>(map['versionId']),
      vpcAccessConnector:
          Input.asOptionalInput<FlexibleAppVersionVpcAccessConnector>(
              map['vpcAccessConnector']),
    );
  }
}
