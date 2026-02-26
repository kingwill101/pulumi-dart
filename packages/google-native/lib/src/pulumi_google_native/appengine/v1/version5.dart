import 'package:pulumi/pulumi.dart';
import 'api_config_handler_response.dart';
import 'automatic_scaling_response.dart';
import 'basic_scaling_response.dart';
import 'deployment_response.dart';
import 'endpoints_api_service_response.dart';
import 'entrypoint_response.dart';
import 'error_handler_response.dart';
import 'flexible_runtime_settings_response.dart';
import 'health_check_response.dart';
import 'library_response.dart';
import 'liveness_check_response.dart';
import 'manual_scaling_response.dart';
import 'network_response.dart';
import 'readiness_check_response.dart';
import 'resources_response.dart';
import 'url_map_response.dart';
import 'version_args2.dart';
import 'vpc_access_connector_response.dart';

/// Deploys code and resource files to a new version.
/// Auto-naming is currently not supported for this resource.
class Version5 extends CustomResource {
  /// Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  late final Output<ApiConfigHandlerResponse> apiConfig;

  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  late final Output<bool> appEngineApis;
  late final Output<String> appId;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  late final Output<AutomaticScalingResponse> automaticScaling;

  /// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  late final Output<BasicScalingResponse> basicScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime features.
  late final Output<Map<String, String>> betaSettings;

  /// Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  late final Output<Map<String, String>> buildEnvVariables;

  /// Time that this version was created.
  late final Output<String> createTime;

  /// Email address of the user who created this version.
  late final Output<String> createdBy;

  /// Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  late final Output<String> defaultExpiration;

  /// Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  late final Output<DeploymentResponse> deployment;

  /// Total size in bytes of all the files that are included in this version and currently hosted on the App Engine disk.
  late final Output<String> diskUsageBytes;

  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  late final Output<EndpointsApiServiceResponse> endpointsApiService;

  /// The entrypoint for the application.
  late final Output<EntrypointResponse> entrypoint;

  /// App Engine execution environment for this version.Defaults to standard.
  late final Output<String> env;

  /// Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  late final Output<Map<String, String>> envVariables;

  /// Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  late final Output<List<ErrorHandlerResponse>> errorHandlers;

  /// Settings for App Engine flexible runtimes.
  late final Output<FlexibleRuntimeSettingsResponse> flexibleRuntimeSettings;

  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  late final Output<Map<String, String>> generatedCustomerMetadata;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  late final Output<List<UrlMapResponse>> handlers;

  /// Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  late final Output<HealthCheckResponse> healthCheck;

  /// Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  late final Output<List<String>> inboundServices;

  /// Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  late final Output<String> instanceClass;

  /// Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  late final Output<List<LibraryResponse>> libraries;

  /// Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  late final Output<LivenessCheckResponse> livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  late final Output<ManualScalingResponse> manualScaling;

  /// Full path to the Version resource in the API. Example: apps/myapp/services/default/versions/v1.
  late final Output<String> name;

  /// Extra network settings. Only applicable in the App Engine flexible environment.
  late final Output<NetworkResponse> network;

  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  late final Output<String> nobuildFilesRegex;

  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  late final Output<ReadinessCheckResponse> readinessCheck;

  /// Machine resources for this version. Only applicable in the App Engine flexible environment.
  late final Output<ResourcesResponse> resources;

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
  late final Output<VpcAccessConnectorResponse> vpcAccessConnector;

  /// The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  late final Output<List<String>> zones;

  Version5(
    String name, {
    VersionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:appengine/v1:Version',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiConfig = Output.createUnknown<ApiConfigHandlerResponse>();
    this.appEngineApis = Output.createUnknown<bool>();
    this.appId = Output.createUnknown<String>();
    this.automaticScaling = Output.createUnknown<AutomaticScalingResponse>();
    this.basicScaling = Output.createUnknown<BasicScalingResponse>();
    this.betaSettings = Output.createUnknown<Map<String, String>>();
    this.buildEnvVariables = Output.createUnknown<Map<String, String>>();
    this.createTime = Output.createUnknown<String>();
    this.createdBy = Output.createUnknown<String>();
    this.defaultExpiration = Output.createUnknown<String>();
    this.deployment = Output.createUnknown<DeploymentResponse>();
    this.diskUsageBytes = Output.createUnknown<String>();
    this.endpointsApiService =
        Output.createUnknown<EndpointsApiServiceResponse>();
    this.entrypoint = Output.createUnknown<EntrypointResponse>();
    this.env = Output.createUnknown<String>();
    this.envVariables = Output.createUnknown<Map<String, String>>();
    this.errorHandlers = Output.createUnknown<List<ErrorHandlerResponse>>();
    this.flexibleRuntimeSettings =
        Output.createUnknown<FlexibleRuntimeSettingsResponse>();
    this.generatedCustomerMetadata =
        Output.createUnknown<Map<String, String>>();
    this.handlers = Output.createUnknown<List<UrlMapResponse>>();
    this.healthCheck = Output.createUnknown<HealthCheckResponse>();
    this.inboundServices = Output.createUnknown<List<String>>();
    this.instanceClass = Output.createUnknown<String>();
    this.libraries = Output.createUnknown<List<LibraryResponse>>();
    this.livenessCheck = Output.createUnknown<LivenessCheckResponse>();
    this.manualScaling = Output.createUnknown<ManualScalingResponse>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<NetworkResponse>();
    this.nobuildFilesRegex = Output.createUnknown<String>();
    this.readinessCheck = Output.createUnknown<ReadinessCheckResponse>();
    this.resources = Output.createUnknown<ResourcesResponse>();
    this.runtime = Output.createUnknown<String>();
    this.runtimeApiVersion = Output.createUnknown<String>();
    this.runtimeChannel = Output.createUnknown<String>();
    this.runtimeMainExecutablePath = Output.createUnknown<String>();
    this.serviceAccount = Output.createUnknown<String>();
    this.serviceId = Output.createUnknown<String>();
    this.servingStatus = Output.createUnknown<String>();
    this.threadsafe = Output.createUnknown<bool>();
    this.versionUrl = Output.createUnknown<String>();
    this.vm = Output.createUnknown<bool>();
    this.vpcAccessConnector =
        Output.createUnknown<VpcAccessConnectorResponse>();
    this.zones = Output.createUnknown<List<String>>();
  }
}
