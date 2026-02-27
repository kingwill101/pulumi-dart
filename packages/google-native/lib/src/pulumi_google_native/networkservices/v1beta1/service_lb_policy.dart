import 'package:pulumi/pulumi.dart' hide Config;
import 'service_lb_policy_args.dart';
import 'service_lb_policy_auto_capacity_drain_response.dart';
import 'service_lb_policy_failover_config_response.dart';

/// Creates a new ServiceLbPolicy in a given project and location.
class ServiceLbPolicy extends CustomResource {
  /// Optional. Configuration to automatically move traffic away for unhealthy IG/NEG for the associated Backend Service.
  late final Output<ServiceLbPolicyAutoCapacityDrainResponse> autoCapacityDrain;

  /// The timestamp when this resource was created.
  late final Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final Output<String> description;

  /// Optional. Configuration related to health based failover.
  late final Output<ServiceLbPolicyFailoverConfigResponse> failoverConfig;

  /// Optional. Set of label tags associated with the ServiceLbPolicy resource.
  late final Output<Map<String, String>> labels;

  /// Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  late final Output<String> loadBalancingAlgorithm;
  late final Output<String> location;

  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Required. Short name of the ServiceLbPolicy resource to be created. E.g. for resource name `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`. the id is value of {service_lb_policy_name}
  late final Output<String> serviceLbPolicyId;

  /// The timestamp when this resource was last updated.
  late final Output<String> updateTime;

  ServiceLbPolicy(
    String name, {
    ServiceLbPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1beta1:ServiceLbPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoCapacityDrain =
        registerOutput<ServiceLbPolicyAutoCapacityDrainResponse>(
            'autoCapacityDrain');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.failoverConfig =
        registerOutput<ServiceLbPolicyFailoverConfigResponse>('failoverConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.loadBalancingAlgorithm =
        registerOutput<String>('loadBalancingAlgorithm');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceLbPolicyId = registerOutput<String>('serviceLbPolicyId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
