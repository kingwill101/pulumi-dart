import 'package:pulumi/pulumi.dart';
import '../standard_app_version_automatic_scaling/standard_app_version_automatic_scaling.dart';
import '../standard_app_version_basic_scaling/standard_app_version_basic_scaling.dart';
import '../standard_app_version_deployment/standard_app_version_deployment.dart';
import '../standard_app_version_entrypoint/standard_app_version_entrypoint.dart';
import '../standard_app_version_handler/standard_app_version_handler.dart';
import '../standard_app_version_library/standard_app_version_library.dart';
import '../standard_app_version_manual_scaling/standard_app_version_manual_scaling.dart';
import '../standard_app_version_vpc_access_connector/standard_app_version_vpc_access_connector.dart';
import 'standard_app_version_args.dart';

/// Standard App Version resource to create a new version of standard GAE Application.
/// Learn about the differences between the standard environment and the flexible environment
/// at https://cloud.google.com/appengine/docs/the-appengine-environments.
/// Currently supporting Zip and File Containers.
///
///
/// To get more information about StandardAppVersion, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/appengine/docs/standard)
///
/// ## Example Usage
///
/// ### App Engine Standard App Version
///
///
///
///
/// ## Import
///
/// StandardAppVersion can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/services/{{service}}/versions/{{version_id}}`
///
/// * `{{project}}/{{service}}/{{version_id}}`
///
/// * `{{service}}/{{version_id}}`
///
/// When using the `pulumi import` command, StandardAppVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/standardAppVersion:StandardAppVersion default apps/{{project}}/services/{{service}}/versions/{{version_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/standardAppVersion:StandardAppVersion default {{project}}/{{service}}/{{version_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/standardAppVersion:StandardAppVersion default {{service}}/{{version_id}}
/// ```
class StandardAppVersion extends CustomResource {
  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  late final Output<bool?> appEngineApis;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// Structure is documented below.
  late final Output<StandardAppVersionAutomaticScaling?> automaticScaling;

  /// Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// Structure is documented below.
  late final Output<StandardAppVersionBasicScaling?> basicScaling;

  /// If set to `true`, the service will be deleted if it is the last version.
  late final Output<bool?> deleteServiceOnDestroy;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  late final Output<StandardAppVersionDeployment> deployment;

  /// The entrypoint for the application.
  /// Structure is documented below.
  late final Output<StandardAppVersionEntrypoint> entrypoint;

  /// Environment variables available to the application.
  late final Output<Map<String, String>?> envVariables;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// The first matching URL handles the request and other request handlers are not attempted.
  /// Structure is documented below.
  late final Output<List<StandardAppVersionHandler>> handlers;

  /// A list of the types of messages that this application is able to receive.
  /// Each value may be one of: `INBOUND_SERVICE_MAIL`, `INBOUND_SERVICE_MAIL_BOUNCE`, `INBOUND_SERVICE_XMPP_ERROR`, `INBOUND_SERVICE_XMPP_MESSAGE`, `INBOUND_SERVICE_XMPP_SUBSCRIBE`, `INBOUND_SERVICE_XMPP_PRESENCE`, `INBOUND_SERVICE_CHANNEL_PRESENCE`, `INBOUND_SERVICE_WARMUP`.
  late final Output<List<String>?> inboundServices;

  /// Instance class that is used to run this version. Valid values are
  /// AutomaticScaling: F1, F2, F4, F4_1G
  /// BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
  /// Defaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen.
  late final Output<String> instanceClass;

  /// Configuration for third-party Python runtime libraries that are required by the application.
  /// Structure is documented below.
  late final Output<List<StandardAppVersionLibrary>?> libraries;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  late final Output<StandardAppVersionManualScaling?> manualScaling;

  /// Full path to the Version resource in the API. Example, "v1".
  late final Output<String> name;

  /// If set to `true`, the application version will not be deleted.
  late final Output<bool?> noopOnDestroy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Desired runtime. Example python27.
  late final Output<String> runtime;

  /// The version of the API in the given runtime environment.
  /// Please see the app.yaml reference for valid values at `https://cloud.google.com/appengine/docs/standard/<language>/config/appref`\
  /// Substitute `<language>` with `python`, `java`, `php`, `ruby`, `go` or `nodejs`.
  late final Output<String?> runtimeApiVersion;

  /// AppEngine service resource
  late final Output<String> service;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  late final Output<String> serviceAccount;

  /// Whether multiple requests can be dispatched to this version at once.
  late final Output<bool?> threadsafe;

  /// Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,"default", "latest", and any name with the prefix "ah-".
  late final Output<String?> versionId;

  /// Enables VPC connectivity for standard apps.
  /// Structure is documented below.
  late final Output<StandardAppVersionVpcAccessConnector?> vpcAccessConnector;

  StandardAppVersion(
    String name, {
    StandardAppVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/standardAppVersion:StandardAppVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appEngineApis = registerOutput<bool?>('appEngineApis');
    this.automaticScaling =
        registerOutput<StandardAppVersionAutomaticScaling?>('automaticScaling');
    this.basicScaling =
        registerOutput<StandardAppVersionBasicScaling?>('basicScaling');
    this.deleteServiceOnDestroy =
        registerOutput<bool?>('deleteServiceOnDestroy');
    this.deployment =
        registerOutput<StandardAppVersionDeployment>('deployment');
    this.entrypoint =
        registerOutput<StandardAppVersionEntrypoint>('entrypoint');
    this.envVariables = registerOutput<Map<String, String>?>('envVariables');
    this.handlers = registerOutput<List<StandardAppVersionHandler>>('handlers');
    this.inboundServices = registerOutput<List<String>?>('inboundServices');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.libraries =
        registerOutput<List<StandardAppVersionLibrary>?>('libraries');
    this.manualScaling =
        registerOutput<StandardAppVersionManualScaling?>('manualScaling');
    this.name = registerOutput<String>('name');
    this.noopOnDestroy = registerOutput<bool?>('noopOnDestroy');
    this.project = registerOutput<String>('project');
    this.runtime = registerOutput<String>('runtime');
    this.runtimeApiVersion = registerOutput<String?>('runtimeApiVersion');
    this.service = registerOutput<String>('service');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.threadsafe = registerOutput<bool?>('threadsafe');
    this.versionId = registerOutput<String?>('versionId');
    this.vpcAccessConnector =
        registerOutput<StandardAppVersionVpcAccessConnector?>(
            'vpcAccessConnector');
  }
}
