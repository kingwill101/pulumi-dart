// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_app_version_automatic_scaling.dart';
import 'standard_app_version_basic_scaling.dart';
import 'standard_app_version_deployment.dart';
import 'standard_app_version_entrypoint.dart';
import 'standard_app_version_handler.dart';
import 'standard_app_version_library.dart';
import 'standard_app_version_manual_scaling.dart';
import 'standard_app_version_vpc_access_connector.dart';

/// {@template pulumi_appengine_standard_app_version_standard_app_version_args_doc}
/// The set of arguments for StandardAppVersion.
/// {@endtemplate}
/// {@macro pulumi_appengine_standard_app_version_standard_app_version_args_doc}
class StandardAppVersionArgs {
  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  final pulumi.Input<bool>? appEngineApis;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionAutomaticScaling>? automaticScaling;

  /// Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionBasicScaling>? basicScaling;

  /// If set to `true`, the service will be deleted if it is the last version.
  final pulumi.Input<bool>? deleteServiceOnDestroy;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionDeployment> deployment;

  /// The entrypoint for the application.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionEntrypoint> entrypoint;

  /// Environment variables available to the application.
  final pulumi.Input<Map<String, String>>? envVariables;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// The first matching URL handles the request and other request handlers are not attempted.
  /// Structure is documented below.
  final pulumi.Input<List<StandardAppVersionHandler>>? handlers;

  /// A list of the types of messages that this application is able to receive.
  /// Each value may be one of: `INBOUND_SERVICE_MAIL`, `INBOUND_SERVICE_MAIL_BOUNCE`, `INBOUND_SERVICE_XMPP_ERROR`, `INBOUND_SERVICE_XMPP_MESSAGE`, `INBOUND_SERVICE_XMPP_SUBSCRIBE`, `INBOUND_SERVICE_XMPP_PRESENCE`, `INBOUND_SERVICE_CHANNEL_PRESENCE`, `INBOUND_SERVICE_WARMUP`.
  final pulumi.Input<List<String>>? inboundServices;

  /// Instance class that is used to run this version. Valid values are
  /// AutomaticScaling: F1, F2, F4, F4_1G
  /// BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
  /// Defaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen.
  final pulumi.Input<String>? instanceClass;

  /// Configuration for third-party Python runtime libraries that are required by the application.
  /// Structure is documented below.
  final pulumi.Input<List<StandardAppVersionLibrary>>? libraries;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionManualScaling>? manualScaling;

  /// If set to `true`, the application version will not be deleted.
  final pulumi.Input<bool>? noopOnDestroy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Desired runtime. Example python27.
  final pulumi.Input<String> runtime;

  /// The version of the API in the given runtime environment.
  /// Please see the app.yaml reference for valid values at `https://cloud.google.com/appengine/docs/standard/<language>/config/appref`\
  /// Substitute `<language>` with `python`, `java`, `php`, `ruby`, `go` or `nodejs`.
  final pulumi.Input<String>? runtimeApiVersion;

  /// AppEngine service resource
  final pulumi.Input<String> service;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  final pulumi.Input<String>? serviceAccount;

  /// Whether multiple requests can be dispatched to this version at once.
  final pulumi.Input<bool>? threadsafe;

  /// Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,"default", "latest", and any name with the prefix "ah-".
  final pulumi.Input<String>? versionId;

  /// Enables VPC connectivity for standard apps.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionVpcAccessConnector>? vpcAccessConnector;

  /// Creates a new [StandardAppVersionArgs].
  /// [appEngineApis] Allows App Engine second generation runtimes to access the legacy bundled services.
  /// [automaticScaling] Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// [basicScaling] Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// [deleteServiceOnDestroy] If set to `true`, the service will be deleted if it is the last version.
  /// [deployment] Code and application artifacts that make up this version.
  /// [entrypoint] The entrypoint for the application.
  /// [envVariables] Environment variables available to the application.
  /// [handlers] An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// [inboundServices] A list of the types of messages that this application is able to receive.
  /// [instanceClass] Instance class that is used to run this version. Valid values are
  /// [libraries] Configuration for third-party Python runtime libraries that are required by the application.
  /// [manualScaling] A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// [noopOnDestroy] If set to `true`, the application version will not be deleted.
  /// [project] The ID of the project in which the resource belongs.
  /// [runtime] Desired runtime. Example python27.
  /// [runtimeApiVersion] The version of the API in the given runtime environment.
  /// [service] AppEngine service resource
  /// [serviceAccount] The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  /// [threadsafe] Whether multiple requests can be dispatched to this version at once.
  /// [versionId] Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,"default", "latest", and any name with the prefix "ah-".
  /// [vpcAccessConnector] Enables VPC connectivity for standard apps.
  StandardAppVersionArgs({
    bool? appEngineApis,
    StandardAppVersionAutomaticScaling? automaticScaling,
    StandardAppVersionBasicScaling? basicScaling,
    bool? deleteServiceOnDestroy,
    required StandardAppVersionDeployment deployment,
    required StandardAppVersionEntrypoint entrypoint,
    Map<String, String>? envVariables,
    List<StandardAppVersionHandler>? handlers,
    List<String>? inboundServices,
    String? instanceClass,
    List<StandardAppVersionLibrary>? libraries,
    StandardAppVersionManualScaling? manualScaling,
    bool? noopOnDestroy,
    String? project,
    required String runtime,
    String? runtimeApiVersion,
    required String service,
    String? serviceAccount,
    bool? threadsafe,
    String? versionId,
    StandardAppVersionVpcAccessConnector? vpcAccessConnector,
  })  : appEngineApis = pulumi.Input.asOptionalInput<bool>(appEngineApis),
        automaticScaling =
            pulumi.Input.asOptionalInput<StandardAppVersionAutomaticScaling>(
                automaticScaling),
        basicScaling =
            pulumi.Input.asOptionalInput<StandardAppVersionBasicScaling>(
                basicScaling),
        deleteServiceOnDestroy =
            pulumi.Input.asOptionalInput<bool>(deleteServiceOnDestroy),
        deployment =
            pulumi.Input.asInput<StandardAppVersionDeployment>(deployment),
        entrypoint =
            pulumi.Input.asInput<StandardAppVersionEntrypoint>(entrypoint),
        envVariables =
            pulumi.Input.asOptionalInput<Map<String, String>>(envVariables),
        handlers =
            pulumi.Input.asOptionalInput<List<StandardAppVersionHandler>>(
                handlers),
        inboundServices =
            pulumi.Input.asOptionalInput<List<String>>(inboundServices),
        instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
        libraries =
            pulumi.Input.asOptionalInput<List<StandardAppVersionLibrary>>(
                libraries),
        manualScaling =
            pulumi.Input.asOptionalInput<StandardAppVersionManualScaling>(
                manualScaling),
        noopOnDestroy = pulumi.Input.asOptionalInput<bool>(noopOnDestroy),
        project = pulumi.Input.asOptionalInput<String>(project),
        runtime = pulumi.Input.asInput<String>(runtime),
        runtimeApiVersion =
            pulumi.Input.asOptionalInput<String>(runtimeApiVersion),
        service = pulumi.Input.asInput<String>(service),
        serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
        threadsafe = pulumi.Input.asOptionalInput<bool>(threadsafe),
        versionId = pulumi.Input.asOptionalInput<String>(versionId),
        vpcAccessConnector =
            pulumi.Input.asOptionalInput<StandardAppVersionVpcAccessConnector>(
                vpcAccessConnector);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineApisValue = appEngineApis;
    if (appEngineApisValue != null) {
      map['appEngineApis'] = appEngineApisValue;
    }
    final automaticScalingValue = automaticScaling;
    if (automaticScalingValue != null) {
      map['automaticScaling'] = pulumi.Input.mapOptionalInputValue<
              StandardAppVersionAutomaticScaling, Map<String, dynamic>>(
          automaticScalingValue, (value) => value.toMap());
    }
    final basicScalingValue = basicScaling;
    if (basicScalingValue != null) {
      map['basicScaling'] = pulumi.Input.mapOptionalInputValue<
          StandardAppVersionBasicScaling,
          Map<String, dynamic>>(basicScalingValue, (value) => value.toMap());
    }
    final deleteServiceOnDestroyValue = deleteServiceOnDestroy;
    if (deleteServiceOnDestroyValue != null) {
      map['deleteServiceOnDestroy'] = deleteServiceOnDestroyValue;
    }
    map['deployment'] = pulumi.Input.mapInputValue<StandardAppVersionDeployment,
        Map<String, dynamic>>(deployment, (value) => value.toMap());
    map['entrypoint'] = pulumi.Input.mapInputValue<StandardAppVersionEntrypoint,
        Map<String, dynamic>>(entrypoint, (value) => value.toMap());
    final envVariablesValue = envVariables;
    if (envVariablesValue != null) {
      map['envVariables'] = envVariablesValue;
    }
    final handlersValue = handlers;
    if (handlersValue != null) {
      map['handlers'] = pulumi.Input.mapOptionalInputValue<
              List<StandardAppVersionHandler>, List<Map<String, dynamic>>>(
          handlersValue,
          (value) => pulumi.Input.encodeList<StandardAppVersionHandler,
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
    final librariesValue = libraries;
    if (librariesValue != null) {
      map['libraries'] = pulumi.Input.mapOptionalInputValue<
              List<StandardAppVersionLibrary>, List<Map<String, dynamic>>>(
          librariesValue,
          (value) => pulumi.Input.encodeList<StandardAppVersionLibrary,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final manualScalingValue = manualScaling;
    if (manualScalingValue != null) {
      map['manualScaling'] = pulumi.Input.mapOptionalInputValue<
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
      map['vpcAccessConnector'] = pulumi.Input.mapOptionalInputValue<
              StandardAppVersionVpcAccessConnector, Map<String, dynamic>>(
          vpcAccessConnectorValue, (value) => value.toMap());
    }
    return map;
  }

  factory StandardAppVersionArgs.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionArgs(
      appEngineApis:
          map['appEngineApis'] == null ? null : map['appEngineApis'] as bool,
      automaticScaling: map['automaticScaling'] == null
          ? null
          : StandardAppVersionAutomaticScaling.fromMap(
              (map['automaticScaling'] as Map).cast<String, dynamic>()),
      basicScaling: map['basicScaling'] == null
          ? null
          : StandardAppVersionBasicScaling.fromMap(
              (map['basicScaling'] as Map).cast<String, dynamic>()),
      deleteServiceOnDestroy: map['deleteServiceOnDestroy'] == null
          ? null
          : map['deleteServiceOnDestroy'] as bool,
      deployment: StandardAppVersionDeployment.fromMap(
          (map['deployment'] as Map).cast<String, dynamic>()),
      entrypoint: StandardAppVersionEntrypoint.fromMap(
          (map['entrypoint'] as Map).cast<String, dynamic>()),
      envVariables: map['envVariables'] == null
          ? null
          : (map['envVariables'] as Map).cast<String, String>(),
      handlers: map['handlers'] == null
          ? null
          : pulumi.Input.decodeList<StandardAppVersionHandler>(
              map['handlers'],
              (value) => StandardAppVersionHandler.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inboundServices: map['inboundServices'] == null
          ? null
          : (map['inboundServices'] as List).cast<String>(),
      instanceClass:
          map['instanceClass'] == null ? null : map['instanceClass'] as String,
      libraries: map['libraries'] == null
          ? null
          : pulumi.Input.decodeList<StandardAppVersionLibrary>(
              map['libraries'],
              (value) => StandardAppVersionLibrary.fromMap(
                  (value as Map).cast<String, dynamic>())),
      manualScaling: map['manualScaling'] == null
          ? null
          : StandardAppVersionManualScaling.fromMap(
              (map['manualScaling'] as Map).cast<String, dynamic>()),
      noopOnDestroy:
          map['noopOnDestroy'] == null ? null : map['noopOnDestroy'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      runtime: map['runtime'] as String,
      runtimeApiVersion: map['runtimeApiVersion'] == null
          ? null
          : map['runtimeApiVersion'] as String,
      service: map['service'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      threadsafe: map['threadsafe'] == null ? null : map['threadsafe'] as bool,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
      vpcAccessConnector: map['vpcAccessConnector'] == null
          ? null
          : StandardAppVersionVpcAccessConnector.fromMap(
              (map['vpcAccessConnector'] as Map).cast<String, dynamic>()),
    );
  }
}
