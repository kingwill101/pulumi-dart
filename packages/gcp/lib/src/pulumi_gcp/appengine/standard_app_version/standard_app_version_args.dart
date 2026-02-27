// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../standard_app_version_automatic_scaling/standard_app_version_automatic_scaling.dart';
import '../standard_app_version_basic_scaling/standard_app_version_basic_scaling.dart';
import '../standard_app_version_deployment/standard_app_version_deployment.dart';
import '../standard_app_version_entrypoint/standard_app_version_entrypoint.dart';
import '../standard_app_version_handler/standard_app_version_handler.dart';
import '../standard_app_version_library/standard_app_version_library.dart';
import '../standard_app_version_manual_scaling/standard_app_version_manual_scaling.dart';
import '../standard_app_version_vpc_access_connector/standard_app_version_vpc_access_connector.dart';

/// The set of arguments for StandardAppVersion.
class StandardAppVersionArgs {
  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  final Input<bool>? appEngineApis;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// Structure is documented below.
  final Input<StandardAppVersionAutomaticScaling>? automaticScaling;

  /// Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// Structure is documented below.
  final Input<StandardAppVersionBasicScaling>? basicScaling;

  /// If set to `true`, the service will be deleted if it is the last version.
  final Input<bool>? deleteServiceOnDestroy;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  final Input<StandardAppVersionDeployment> deployment;

  /// The entrypoint for the application.
  /// Structure is documented below.
  final Input<StandardAppVersionEntrypoint> entrypoint;

  /// Environment variables available to the application.
  final Input<Map<String, String>>? envVariables;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// The first matching URL handles the request and other request handlers are not attempted.
  /// Structure is documented below.
  final Input<List<StandardAppVersionHandler>>? handlers;

  /// A list of the types of messages that this application is able to receive.
  /// Each value may be one of: `INBOUND_SERVICE_MAIL`, `INBOUND_SERVICE_MAIL_BOUNCE`, `INBOUND_SERVICE_XMPP_ERROR`, `INBOUND_SERVICE_XMPP_MESSAGE`, `INBOUND_SERVICE_XMPP_SUBSCRIBE`, `INBOUND_SERVICE_XMPP_PRESENCE`, `INBOUND_SERVICE_CHANNEL_PRESENCE`, `INBOUND_SERVICE_WARMUP`.
  final Input<List<String>>? inboundServices;

  /// Instance class that is used to run this version. Valid values are
  /// AutomaticScaling: F1, F2, F4, F4_1G
  /// BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
  /// Defaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen.
  final Input<String>? instanceClass;

  /// Configuration for third-party Python runtime libraries that are required by the application.
  /// Structure is documented below.
  final Input<List<StandardAppVersionLibrary>>? libraries;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final Input<StandardAppVersionManualScaling>? manualScaling;

  /// If set to `true`, the application version will not be deleted.
  final Input<bool>? noopOnDestroy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Desired runtime. Example python27.
  final Input<String> runtime;

  /// The version of the API in the given runtime environment.
  /// Please see the app.yaml reference for valid values at `https://cloud.google.com/appengine/docs/standard/<language>/config/appref`\
  /// Substitute `<language>` with `python`, `java`, `php`, `ruby`, `go` or `nodejs`.
  final Input<String>? runtimeApiVersion;

  /// AppEngine service resource
  final Input<String> service;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  final Input<String>? serviceAccount;

  /// Whether multiple requests can be dispatched to this version at once.
  final Input<bool>? threadsafe;

  /// Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,"default", "latest", and any name with the prefix "ah-".
  final Input<String>? versionId;

  /// Enables VPC connectivity for standard apps.
  /// Structure is documented below.
  final Input<StandardAppVersionVpcAccessConnector>? vpcAccessConnector;

  StandardAppVersionArgs({
    this.appEngineApis,
    this.automaticScaling,
    this.basicScaling,
    this.deleteServiceOnDestroy,
    required this.deployment,
    required this.entrypoint,
    this.envVariables,
    this.handlers,
    this.inboundServices,
    this.instanceClass,
    this.libraries,
    this.manualScaling,
    this.noopOnDestroy,
    this.project,
    required this.runtime,
    this.runtimeApiVersion,
    required this.service,
    this.serviceAccount,
    this.threadsafe,
    this.versionId,
    this.vpcAccessConnector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineApisValue = appEngineApis;
    if (appEngineApisValue != null) {
      map['appEngineApis'] = appEngineApisValue;
    }
    final automaticScalingValue = automaticScaling;
    if (automaticScalingValue != null) {
      map['automaticScaling'] = Input.mapOptionalInputValue<
              StandardAppVersionAutomaticScaling, Map<String, dynamic>>(
          automaticScalingValue, (value) => value.toMap());
    }
    final basicScalingValue = basicScaling;
    if (basicScalingValue != null) {
      map['basicScaling'] = Input.mapOptionalInputValue<
          StandardAppVersionBasicScaling,
          Map<String, dynamic>>(basicScalingValue, (value) => value.toMap());
    }
    final deleteServiceOnDestroyValue = deleteServiceOnDestroy;
    if (deleteServiceOnDestroyValue != null) {
      map['deleteServiceOnDestroy'] = deleteServiceOnDestroyValue;
    }
    map['deployment'] =
        Input.mapInputValue<StandardAppVersionDeployment, Map<String, dynamic>>(
            deployment, (value) => value.toMap());
    map['entrypoint'] =
        Input.mapInputValue<StandardAppVersionEntrypoint, Map<String, dynamic>>(
            entrypoint, (value) => value.toMap());
    final envVariablesValue = envVariables;
    if (envVariablesValue != null) {
      map['envVariables'] = envVariablesValue;
    }
    final handlersValue = handlers;
    if (handlersValue != null) {
      map['handlers'] = Input.mapOptionalInputValue<
              List<StandardAppVersionHandler>, List<Map<String, dynamic>>>(
          handlersValue,
          (value) =>
              Input.encodeList<StandardAppVersionHandler, Map<String, dynamic>>(
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
    final librariesValue = libraries;
    if (librariesValue != null) {
      map['libraries'] = Input.mapOptionalInputValue<
              List<StandardAppVersionLibrary>, List<Map<String, dynamic>>>(
          librariesValue,
          (value) =>
              Input.encodeList<StandardAppVersionLibrary, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final manualScalingValue = manualScaling;
    if (manualScalingValue != null) {
      map['manualScaling'] = Input.mapOptionalInputValue<
          StandardAppVersionManualScaling,
          Map<String, dynamic>>(manualScalingValue, (value) => value.toMap());
    }
    final noopOnDestroyValue = noopOnDestroy;
    if (noopOnDestroyValue != null) {
      map['noopOnDestroy'] = noopOnDestroyValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['runtime'] = runtime;
    final runtimeApiVersionValue = runtimeApiVersion;
    if (runtimeApiVersionValue != null) {
      map['runtimeApiVersion'] = runtimeApiVersionValue;
    }
    map['service'] = service;
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final threadsafeValue = threadsafe;
    if (threadsafeValue != null) {
      map['threadsafe'] = threadsafeValue;
    }
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    final vpcAccessConnectorValue = vpcAccessConnector;
    if (vpcAccessConnectorValue != null) {
      map['vpcAccessConnector'] = Input.mapOptionalInputValue<
              StandardAppVersionVpcAccessConnector, Map<String, dynamic>>(
          vpcAccessConnectorValue, (value) => value.toMap());
    }
    return map;
  }

  factory StandardAppVersionArgs.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionArgs(
      appEngineApis: Input.asOptionalInput<bool>(map['appEngineApis']),
      automaticScaling:
          Input.asOptionalInput<StandardAppVersionAutomaticScaling>(
              map['automaticScaling']),
      basicScaling: Input.asOptionalInput<StandardAppVersionBasicScaling>(
          map['basicScaling']),
      deleteServiceOnDestroy:
          Input.asOptionalInput<bool>(map['deleteServiceOnDestroy']),
      deployment:
          Input.asInput<StandardAppVersionDeployment>(map['deployment']),
      entrypoint:
          Input.asInput<StandardAppVersionEntrypoint>(map['entrypoint']),
      envVariables:
          Input.asOptionalInput<Map<String, String>>(map['envVariables']),
      handlers: Input.asOptionalInput<List<StandardAppVersionHandler>>(
          map['handlers']),
      inboundServices:
          Input.asOptionalInput<List<String>>(map['inboundServices']),
      instanceClass: Input.asOptionalInput<String>(map['instanceClass']),
      libraries: Input.asOptionalInput<List<StandardAppVersionLibrary>>(
          map['libraries']),
      manualScaling: Input.asOptionalInput<StandardAppVersionManualScaling>(
          map['manualScaling']),
      noopOnDestroy: Input.asOptionalInput<bool>(map['noopOnDestroy']),
      project: Input.asOptionalInput<String>(map['project']),
      runtime: Input.asInput<String>(map['runtime']),
      runtimeApiVersion:
          Input.asOptionalInput<String>(map['runtimeApiVersion']),
      service: Input.asInput<String>(map['service']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      threadsafe: Input.asOptionalInput<bool>(map['threadsafe']),
      versionId: Input.asOptionalInput<String>(map['versionId']),
      vpcAccessConnector:
          Input.asOptionalInput<StandardAppVersionVpcAccessConnector>(
              map['vpcAccessConnector']),
    );
  }
}
