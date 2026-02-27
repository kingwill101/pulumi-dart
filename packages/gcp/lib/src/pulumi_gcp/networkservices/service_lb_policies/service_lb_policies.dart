import 'package:pulumi/pulumi.dart';
import '../service_lb_policies_auto_capacity_drain/service_lb_policies_auto_capacity_drain.dart';
import '../service_lb_policies_failover_config/service_lb_policies_failover_config.dart';
import '../service_lb_policies_isolation_config/service_lb_policies_isolation_config.dart';
import 'service_lb_policies_args.dart';

/// ServiceLbPolicy holds global load balancing and traffic distribution configuration that can be applied to a BackendService.
///
/// To get more information about ServiceLbPolicies, see:
///
/// * [API documentation](https://cloud.google.com/service-mesh/docs/reference/network-services/rest/v1/projects.locations.serviceLbPolicies)
///
/// ## Example Usage
///
/// ### Network Services Service Lb Policies Basic
///
///
///
/// ### Network Services Service Lb Policies Advanced
///
///
///
/// ### Network Services Service Lb Policies Beta
///
///
///
///
/// ## Import
///
/// ServiceLbPolicies can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/serviceLbPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ServiceLbPolicies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/serviceLbPolicies:ServiceLbPolicies default projects/{{project}}/locations/{{location}}/serviceLbPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/serviceLbPolicies:ServiceLbPolicies default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/serviceLbPolicies:ServiceLbPolicies default {{location}}/{{name}}
/// ```
class ServiceLbPolicies extends CustomResource {
  /// Option to specify if an unhealthy MIG/NEG should be considered for global load balancing and traffic routing.
  /// Structure is documented below.
  late final Output<ServiceLbPoliciesAutoCapacityDrain?> autoCapacityDrain;

  /// Time the ServiceLbPolicy was created in UTC.
  late final Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
  /// Structure is documented below.
  late final Output<ServiceLbPoliciesFailoverConfig?> failoverConfig;

  /// Configuration to provide isolation support for the associated Backend Service.
  /// Structure is documented below.
  late final Output<ServiceLbPoliciesIsolationConfig?> isolationConfig;

  /// Set of label tags associated with the ServiceLbPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// Possible values are: `SPRAY_TO_REGION`, `SPRAY_TO_WORLD`, `WATERFALL_BY_REGION`, `WATERFALL_BY_ZONE`.
  late final Output<String?> loadBalancingAlgorithm;

  /// The location of the service lb policy.
  late final Output<String> location;

  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Time the ServiceLbPolicy was updated in UTC.
  late final Output<String> updateTime;

  ServiceLbPolicies(
    String name, {
    ServiceLbPoliciesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/serviceLbPolicies:ServiceLbPolicies',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoCapacityDrain =
        registerOutput<ServiceLbPoliciesAutoCapacityDrain?>(
            'autoCapacityDrain');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.failoverConfig =
        registerOutput<ServiceLbPoliciesFailoverConfig?>('failoverConfig');
    this.isolationConfig =
        registerOutput<ServiceLbPoliciesIsolationConfig?>('isolationConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.loadBalancingAlgorithm =
        registerOutput<String?>('loadBalancingAlgorithm');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
