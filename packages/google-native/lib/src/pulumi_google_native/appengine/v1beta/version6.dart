import 'package:pulumi/pulumi.dart';
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
import 'version_args3.dart';
import 'vpc_access_connector_response2.dart';

/// Deploys code and resource files to a new version.
/// Auto-naming is currently not supported for this resource.
class Version6 extends CustomResource {
  /// Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  late final Output<ApiConfigHandlerResponse2> apiConfig;

  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  late final Output<bool> appEngineApis;
  late final Output<String> appId;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  late final Output<AutomaticScalingResponse2> automaticScaling;

  /// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  late final Output<BasicScalingResponse2> basicScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime features.
  late final Output<Map<String, String>> betaSettings;

  /// Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  late final Output<Map<String, String>> buildEnvVariables;

  /// Time that this version was created.
  late final Output<String> createTime;

  /// Email address of the user who created this version.
  late final Output<String> createdBy;

  /// Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  late final Output<String> defaultExpiration;

  /// Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  late final Output<DeploymentResponse2> deployment;

  /// Total size in bytes of all the files that are included in this version and currently hosted on the App Engine disk.
  late final Output<String> diskUsageBytes;

  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  late final Output<EndpointsApiServiceResponse2> endpointsApiService;

  /// The entrypoint for the application.
  late final Output<EntrypointResponse2> entrypoint;

  /// App Engine execution environment for this version.Defaults to standard.
  late final Output<String> env;

  /// Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  late final Output<Map<String, String>> envVariables;

  /// Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  late final Output<List<ErrorHandlerResponse2>> errorHandlers;

  /// Settings for App Engine flexible runtimes.
  late final Output<FlexibleRuntimeSettingsResponse2> flexibleRuntimeSettings;

  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  late final Output<Map<String, String>> generatedCustomerMetadata;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  late final Output<List<UrlMapResponse2>> handlers;

  /// Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  late final Output<HealthCheckResponse2> healthCheck;

  /// Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  late final Output<List<String>> inboundServices;

  /// Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  late final Output<String> instanceClass;

  /// Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  late final Output<List<LibraryResponse2>> libraries;

  /// Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  late final Output<LivenessCheckResponse2> livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  late final Output<ManualScalingResponse2> manualScaling;

  /// Full path to the Version resource in the API. Example: apps/myapp/services/default/versions/v1.
  late final Output<String> name;

  /// Extra network settings. Only applicable in the App Engine flexible environment.
  late final Output<NetworkResponse2> network;

  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  late final Output<String> nobuildFilesRegex;

  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  late final Output<ReadinessCheckResponse2> readinessCheck;

  /// Machine resources for this version. Only applicable in the App Engine flexible environment.
  late final Output<ResourcesResponse2> resources;

  /// Desired runtime. Example: python27.
  late final Output<String> runtime;

  /// The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref
  late final Output<String> runtimeApiVersion;

  /// The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.
  late final Output<String> runtimeChannel;

  /// The path or name of the app's main executable.
  late final Output<String> runtimeMainExecutablePath;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  late final Output<String> serviceAccount;
  late final Output<String> serviceId;

  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
  late final Output<String> servingStatus;

  /// Whether multiple requests can be dispatched to this version at once.
  late final Output<bool> threadsafe;

  /// Serving URL for this version. Example: "https://myversion-dot-myservice-dot-myapp.appspot.com"
  late final Output<String> versionUrl;

  /// Whether to deploy this version in a container on a virtual machine.
  late final Output<bool> vm;

  /// Enables VPC connectivity for standard apps.
  late final Output<VpcAccessConnectorResponse2> vpcAccessConnector;

  /// The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  late final Output<List<String>> zones;

  Version6(
    String name, {
    VersionArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:appengine/v1beta:Version',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiConfig = registerOutput<ApiConfigHandlerResponse2>('apiConfig');
    this.appEngineApis = registerOutput<bool>('appEngineApis');
    this.appId = registerOutput<String>('appId');
    this.automaticScaling =
        registerOutput<AutomaticScalingResponse2>('automaticScaling');
    this.basicScaling = registerOutput<BasicScalingResponse2>('basicScaling');
    this.betaSettings = registerOutput<Map<String, String>>('betaSettings');
    this.buildEnvVariables =
        registerOutput<Map<String, String>>('buildEnvVariables');
    this.createTime = registerOutput<String>('createTime');
    this.createdBy = registerOutput<String>('createdBy');
    this.defaultExpiration = registerOutput<String>('defaultExpiration');
    this.deployment = registerOutput<DeploymentResponse2>('deployment');
    this.diskUsageBytes = registerOutput<String>('diskUsageBytes');
    this.endpointsApiService =
        registerOutput<EndpointsApiServiceResponse2>('endpointsApiService');
    this.entrypoint = registerOutput<EntrypointResponse2>('entrypoint');
    this.env = registerOutput<String>('env');
    this.envVariables = registerOutput<Map<String, String>>('envVariables');
    this.errorHandlers =
        registerOutput<List<ErrorHandlerResponse2>>('errorHandlers');
    this.flexibleRuntimeSettings =
        registerOutput<FlexibleRuntimeSettingsResponse2>(
            'flexibleRuntimeSettings');
    this.generatedCustomerMetadata =
        registerOutput<Map<String, String>>('generatedCustomerMetadata');
    this.handlers = registerOutput<List<UrlMapResponse2>>('handlers');
    this.healthCheck = registerOutput<HealthCheckResponse2>('healthCheck');
    this.inboundServices = registerOutput<List<String>>('inboundServices');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.libraries = registerOutput<List<LibraryResponse2>>('libraries');
    this.livenessCheck =
        registerOutput<LivenessCheckResponse2>('livenessCheck');
    this.manualScaling =
        registerOutput<ManualScalingResponse2>('manualScaling');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<NetworkResponse2>('network');
    this.nobuildFilesRegex = registerOutput<String>('nobuildFilesRegex');
    this.readinessCheck =
        registerOutput<ReadinessCheckResponse2>('readinessCheck');
    this.resources = registerOutput<ResourcesResponse2>('resources');
    this.runtime = registerOutput<String>('runtime');
    this.runtimeApiVersion = registerOutput<String>('runtimeApiVersion');
    this.runtimeChannel = registerOutput<String>('runtimeChannel');
    this.runtimeMainExecutablePath =
        registerOutput<String>('runtimeMainExecutablePath');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.serviceId = registerOutput<String>('serviceId');
    this.servingStatus = registerOutput<String>('servingStatus');
    this.threadsafe = registerOutput<bool>('threadsafe');
    this.versionUrl = registerOutput<String>('versionUrl');
    this.vm = registerOutput<bool>('vm');
    this.vpcAccessConnector =
        registerOutput<VpcAccessConnectorResponse2>('vpcAccessConnector');
    this.zones = registerOutput<List<String>>('zones');
  }
}
