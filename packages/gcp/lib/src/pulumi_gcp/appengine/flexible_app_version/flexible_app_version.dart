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
import 'flexible_app_version_args.dart';

/// Flexible App Version resource to create a new version of flexible GAE Application. Based on Google Compute Engine,
/// the App Engine flexible environment automatically scales your app up and down while also balancing the load.
/// Learn about the differences between the standard environment and the flexible environment
/// at https://cloud.google.com/appengine/docs/the-appengine-environments.
///
/// > **Note:** The App Engine flexible environment service account uses the member ID `service-[YOUR_PROJECT_NUMBER]@gae-api-prod.google.com.iam.gserviceaccount.com`
/// It should have the App Engine Flexible Environment Service Agent role, which will be applied when the `appengineflex.googleapis.com` service is enabled.
///
///
/// To get more information about FlexibleAppVersion, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/appengine/docs/flexible)
///
/// ## Example Usage
///
/// ### App Engine Flexible App Version
///
///
///
///
/// ## Import
///
/// FlexibleAppVersion can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/services/{{service}}/versions/{{version_id}}`
///
/// * `{{project}}/{{service}}/{{version_id}}`
///
/// * `{{service}}/{{version_id}}`
///
/// When using the `pulumi import` command, FlexibleAppVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/flexibleAppVersion:FlexibleAppVersion default apps/{{project}}/services/{{service}}/versions/{{version_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/flexibleAppVersion:FlexibleAppVersion default {{project}}/{{service}}/{{version_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/flexibleAppVersion:FlexibleAppVersion default {{service}}/{{version_id}}
/// ```
class FlexibleAppVersion extends pulumi.CustomResource {
  /// Serving configuration for Google Cloud Endpoints.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionApiConfig?> apiConfig;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionAutomaticScaling?>
      automaticScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime features.
  late final pulumi.Output<Map<String, String>?> betaSettings;

  /// Duration that static files should be cached by web proxies and browsers.
  /// Only applicable if the corresponding StaticFilesHandler does not specify its own expiration time.
  late final pulumi.Output<String?> defaultExpiration;

  /// If set to `true`, the service will be deleted if it is the last version.
  late final pulumi.Output<bool?> deleteServiceOnDestroy;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionDeployment?> deployment;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionEndpointsApiService?>
      endpointsApiService;

  /// The entrypoint for the application.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionEntrypoint?> entrypoint;

  /// Environment variables available to the application.  As these are not returned in the API request, the provider will not detect any changes made outside of the config.
  late final pulumi.Output<Map<String, String>?> envVariables;

  /// Runtime settings for App Engine flexible environment.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionFlexibleRuntimeSettings?>
      flexibleRuntimeSettings;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// The first matching URL handles the request and other request handlers are not attempted.
  /// Structure is documented below.
  late final pulumi.Output<List<FlexibleAppVersionHandler>> handlers;

  /// A list of the types of messages that this application is able to receive.
  /// Each value may be one of: `INBOUND_SERVICE_MAIL`, `INBOUND_SERVICE_MAIL_BOUNCE`, `INBOUND_SERVICE_XMPP_ERROR`, `INBOUND_SERVICE_XMPP_MESSAGE`, `INBOUND_SERVICE_XMPP_SUBSCRIBE`, `INBOUND_SERVICE_XMPP_PRESENCE`, `INBOUND_SERVICE_CHANNEL_PRESENCE`, `INBOUND_SERVICE_WARMUP`.
  late final pulumi.Output<List<String>?> inboundServices;

  /// Instance class that is used to run this version. Valid values are
  /// AutomaticScaling: F1, F2, F4, F4_1G
  /// ManualScaling: B1, B2, B4, B8, B4_1G
  /// Defaults to F1 for AutomaticScaling and B1 for ManualScaling.
  late final pulumi.Output<String?> instanceClass;

  /// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionLivenessCheck> livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionManualScaling?> manualScaling;

  /// Full path to the Version resource in the API. Example, "v1".
  late final pulumi.Output<String> name;

  /// Extra network settings
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionNetwork?> network;

  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.
  late final pulumi.Output<String?> nobuildFilesRegex;

  /// If set to `true`, the application version will not be deleted.
  late final pulumi.Output<bool?> noopOnDestroy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionReadinessCheck> readinessCheck;

  /// Machine resources for a version.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionResources?> resources;

  /// Desired runtime. Example python27.
  late final pulumi.Output<String> runtime;

  /// The version of the API in the given runtime environment.
  /// Please see the app.yaml reference for valid values at `https://cloud.google.com/appengine/docs/standard/<language>/config/appref`\
  /// Substitute `<language>` with `python`, `java`, `php`, `ruby`, `go` or `nodejs`.
  late final pulumi.Output<String> runtimeApiVersion;

  /// The channel of the runtime to use. Only available for some runtimes.
  late final pulumi.Output<String?> runtimeChannel;

  /// The path or name of the app's main executable.
  late final pulumi.Output<String?> runtimeMainExecutablePath;

  /// AppEngine service resource. Can contain numbers, letters, and hyphens.
  late final pulumi.Output<String> service;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as
  /// default if this field is neither provided in app.yaml file nor through CLI flag.
  late final pulumi.Output<String> serviceAccount;

  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.
  /// Default value is `SERVING`.
  /// Possible values are: `SERVING`, `STOPPED`.
  late final pulumi.Output<String?> servingStatus;

  /// Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens.
  /// Reserved names,"default", "latest", and any name with the prefix "ah-".
  late final pulumi.Output<String?> versionId;

  /// Enables VPC connectivity for standard apps.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionVpcAccessConnector?>
      vpcAccessConnector;

  FlexibleAppVersion(
    String name, {
    FlexibleAppVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/flexibleAppVersion:FlexibleAppVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiConfig = registerOutput<FlexibleAppVersionApiConfig?>('apiConfig');
    this.automaticScaling =
        registerOutput<FlexibleAppVersionAutomaticScaling?>('automaticScaling');
    this.betaSettings = registerOutput<Map<String, String>?>('betaSettings');
    this.defaultExpiration = registerOutput<String?>('defaultExpiration');
    this.deleteServiceOnDestroy =
        registerOutput<bool?>('deleteServiceOnDestroy');
    this.deployment =
        registerOutput<FlexibleAppVersionDeployment?>('deployment');
    this.endpointsApiService =
        registerOutput<FlexibleAppVersionEndpointsApiService?>(
            'endpointsApiService');
    this.entrypoint =
        registerOutput<FlexibleAppVersionEntrypoint?>('entrypoint');
    this.envVariables = registerOutput<Map<String, String>?>('envVariables');
    this.flexibleRuntimeSettings =
        registerOutput<FlexibleAppVersionFlexibleRuntimeSettings?>(
            'flexibleRuntimeSettings');
    this.handlers = registerOutput<List<FlexibleAppVersionHandler>>('handlers');
    this.inboundServices = registerOutput<List<String>?>('inboundServices');
    this.instanceClass = registerOutput<String?>('instanceClass');
    this.livenessCheck =
        registerOutput<FlexibleAppVersionLivenessCheck>('livenessCheck');
    this.manualScaling =
        registerOutput<FlexibleAppVersionManualScaling?>('manualScaling');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<FlexibleAppVersionNetwork?>('network');
    this.nobuildFilesRegex = registerOutput<String?>('nobuildFilesRegex');
    this.noopOnDestroy = registerOutput<bool?>('noopOnDestroy');
    this.project = registerOutput<String>('project');
    this.readinessCheck =
        registerOutput<FlexibleAppVersionReadinessCheck>('readinessCheck');
    this.resources = registerOutput<FlexibleAppVersionResources?>('resources');
    this.runtime = registerOutput<String>('runtime');
    this.runtimeApiVersion = registerOutput<String>('runtimeApiVersion');
    this.runtimeChannel = registerOutput<String?>('runtimeChannel');
    this.runtimeMainExecutablePath =
        registerOutput<String?>('runtimeMainExecutablePath');
    this.service = registerOutput<String>('service');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.servingStatus = registerOutput<String?>('servingStatus');
    this.versionId = registerOutput<String?>('versionId');
    this.vpcAccessConnector =
        registerOutput<FlexibleAppVersionVpcAccessConnector?>(
            'vpcAccessConnector');
  }
}
