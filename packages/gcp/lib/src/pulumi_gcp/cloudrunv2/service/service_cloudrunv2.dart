import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_binary_authorization/service_binary_authorization.dart';
import '../service_build_config/service_build_config.dart';
import '../service_condition/service_condition.dart';
import '../service_multi_region_settings/service_multi_region_settings.dart';
import '../service_scaling/service_scaling.dart';
import '../service_template/service_template_cloudrunv2.dart';
import '../service_terminal_condition/service_terminal_condition.dart';
import '../service_traffic/service_traffic_cloudrunv2.dart';
import '../service_traffic_status/service_traffic_status.dart';
import 'service_cloudrunv2_args.dart';

/// Service acts as a top-level container that manages a set of configurations and revision templates which implement a network service. Service exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
///
/// ## Example Usage
///
/// ### Cloudrunv2 Service Basic
///
///
///
/// ### Cloudrunv2 Service Limits
///
///
///
/// ### Cloudrunv2 Service Sql
///
///
///
/// ### Cloudrunv2 Service Vpcaccess
///
///
///
/// ### Cloudrunv2 Service Directvpc
///
///
///
/// ### Cloudrunv2 Service Gpu
///
///
///
/// ### Cloudrunv2 Service Probes
///
///
///
/// ### Cloudrunv2 Service Secret
///
///
///
/// ### Cloudrunv2 Service Multicontainer
///
///
///
/// ### Cloudrunv2 Service Mount Gcs
///
///
///
/// ### Cloudrunv2 Service Mount Nfs
///
///
///
/// ### Cloudrunv2 Service Mesh
///
///
///
/// ### Cloudrunv2 Service Invokeriam
///
///
///
/// ### Cloudrunv2 Service Iap
///
///
///
/// ### Cloudrunv2 Service Zip Deploy
///
///
///
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/services/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/service:Service default projects/{{project}}/locations/{{location}}/services/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/service:Service default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/service:Service default {{location}}/{{name}}
/// ```
class ServiceCloudrunv2 extends pulumi.CustomResource {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// All system annotations in v1 now have a corresponding field in v2 Service.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  late final pulumi.Output<ServiceBinaryAuthorization?> binaryAuthorization;

  /// Configuration for building a Cloud Run function.
  /// Structure is documented below.
  late final pulumi.Output<ServiceBuildConfig?> buildConfig;

  /// Arbitrary identifier for the API client.
  late final pulumi.Output<String?> client;

  /// Arbitrary version identifier for the API client.
  late final pulumi.Output<String?> clientVersion;

  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final pulumi.Output<List<ServiceCondition>> conditions;

  /// The creation time.
  late final pulumi.Output<String> createTime;

  /// Email address of the authenticated creator.
  late final pulumi.Output<String> creator;

  /// One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  late final pulumi.Output<List<String>?> customAudiences;

  /// Disables public resolution of the default URI of this service.
  late final pulumi.Output<bool?> defaultUriDisabled;

  /// The deletion time.
  late final pulumi.Output<String> deleteTime;
  late final pulumi.Output<bool?> deletionProtection;

  /// User-provided description of the Service. This field currently has a 512-character limit.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  late final pulumi.Output<String> etag;

  /// For a deleted resource, the time after which it will be permanently deleted.
  late final pulumi.Output<String> expireTime;

  /// A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  late final pulumi.Output<String> generation;

  /// Used to enable/disable IAP for the service.
  late final pulumi.Output<bool?> iapEnabled;

  /// Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// Possible values are: `INGRESS_TRAFFIC_ALL`, `INGRESS_TRAFFIC_INTERNAL_ONLY`, `INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER`.
  late final pulumi.Output<String> ingress;

  /// Disables IAM permission check for run.routes.invoke for callers of this service. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  late final pulumi.Output<bool?> invokerIamDisabled;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with  `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 Service.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Email address of the last authenticated modifier.
  late final pulumi.Output<String> lastModifier;

  /// Name of the last created revision. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<String> latestCreatedRevision;

  /// Name of the latest revision that is serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<String> latestReadyRevision;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  late final pulumi.Output<String> launchStage;

  /// The location of the cloud run service
  late final pulumi.Output<String> location;

  /// Settings for creating a Multi-Region Service. Make sure to use region = 'global' when using them. For more information, visit https://cloud.google.com/run/docs/multiple-regions#deploy
  /// Structure is documented below.
  late final pulumi.Output<ServiceMultiRegionSettings?> multiRegionSettings;

  /// Name of the Service.
  late final pulumi.Output<String> name;

  /// The generation of this Service currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  late final pulumi.Output<String> observedGeneration;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Returns true if the Service is currently being acted upon by the system to bring it into the desired state.
  /// When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, observedGeneration, latest_ready_revison, trafficStatuses, and uri will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  /// If reconciliation succeeded, the following fields will match: traffic and trafficStatuses, observedGeneration and generation, latestReadyRevision and latestCreatedRevision.
  /// If reconciliation failed, trafficStatuses, observedGeneration, and latestReadyRevision will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in terminalCondition and conditions.
  late final pulumi.Output<bool> reconciling;

  /// Scaling settings that apply to the whole service
  /// Structure is documented below.
  late final pulumi.Output<ServiceScaling> scaling;

  /// The template used to create revisions for this Service.
  /// Structure is documented below.
  late final pulumi.Output<ServiceTemplateCloudrunv2> template;

  /// The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final pulumi.Output<List<ServiceTerminalCondition>> terminalConditions;

  /// Detailed status information for corresponding traffic targets. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final pulumi.Output<List<ServiceTrafficStatus>> trafficStatuses;

  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision.
  /// Structure is documented below.
  late final pulumi.Output<List<ServiceTrafficCloudrunv2>> traffics;

  /// Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;

  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// (Output)
  /// Displays the target URI.
  late final pulumi.Output<String> uri;

  /// All URLs serving traffic for this Service.
  late final pulumi.Output<List<String>> urls;

  ServiceCloudrunv2(
    String name, {
    ServiceCloudrunv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.binaryAuthorization =
        registerOutput<ServiceBinaryAuthorization?>('binaryAuthorization');
    this.buildConfig = registerOutput<ServiceBuildConfig?>('buildConfig');
    this.client = registerOutput<String?>('client');
    this.clientVersion = registerOutput<String?>('clientVersion');
    this.conditions = registerOutput<List<ServiceCondition>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.customAudiences = registerOutput<List<String>?>('customAudiences');
    this.defaultUriDisabled = registerOutput<bool?>('defaultUriDisabled');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.generation = registerOutput<String>('generation');
    this.iapEnabled = registerOutput<bool?>('iapEnabled');
    this.ingress = registerOutput<String>('ingress');
    this.invokerIamDisabled = registerOutput<bool?>('invokerIamDisabled');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lastModifier = registerOutput<String>('lastModifier');
    this.latestCreatedRevision =
        registerOutput<String>('latestCreatedRevision');
    this.latestReadyRevision = registerOutput<String>('latestReadyRevision');
    this.launchStage = registerOutput<String>('launchStage');
    this.location = registerOutput<String>('location');
    this.multiRegionSettings =
        registerOutput<ServiceMultiRegionSettings?>('multiRegionSettings');
    this.name = registerOutput<String>('name');
    this.observedGeneration = registerOutput<String>('observedGeneration');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.scaling = registerOutput<ServiceScaling>('scaling');
    this.template = registerOutput<ServiceTemplateCloudrunv2>('template');
    this.terminalConditions =
        registerOutput<List<ServiceTerminalCondition>>('terminalConditions');
    this.trafficStatuses =
        registerOutput<List<ServiceTrafficStatus>>('trafficStatuses');
    this.traffics = registerOutput<List<ServiceTrafficCloudrunv2>>('traffics');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.uri = registerOutput<String>('uri');
    this.urls = registerOutput<List<String>>('urls');
  }
}
