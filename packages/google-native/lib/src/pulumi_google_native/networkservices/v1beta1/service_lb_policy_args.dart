// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_lb_policy_auto_capacity_drain.dart';
import 'service_lb_policy_failover_config.dart';
import 'service_lb_policy_load_balancing_algorithm.dart';

/// The set of arguments for ServiceLbPolicy.
class ServiceLbPolicyArgs {
  /// Optional. Configuration to automatically move traffic away for unhealthy IG/NEG for the associated Backend Service.
  final pulumi.Input<ServiceLbPolicyAutoCapacityDrain>? autoCapacityDrain;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Optional. Configuration related to health based failover.
  final pulumi.Input<ServiceLbPolicyFailoverConfig>? failoverConfig;

  /// Optional. Set of label tags associated with the ServiceLbPolicy resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  final pulumi.Input<ServiceLbPolicyLoadBalancingAlgorithm>?
      loadBalancingAlgorithm;
  final pulumi.Input<String>? location;

  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Required. Short name of the ServiceLbPolicy resource to be created. E.g. for resource name `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`. the id is value of {service_lb_policy_name}
  final pulumi.Input<String> serviceLbPolicyId;

  ServiceLbPolicyArgs({
    this.autoCapacityDrain,
    this.description,
    this.failoverConfig,
    this.labels,
    this.loadBalancingAlgorithm,
    this.location,
    this.name,
    this.project,
    required this.serviceLbPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoCapacityDrainValue = autoCapacityDrain;
    if (autoCapacityDrainValue != null) {
      map['autoCapacityDrain'] = pulumi.Input.mapOptionalInputValue<
              ServiceLbPolicyAutoCapacityDrain, Map<String, dynamic>>(
          autoCapacityDrainValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final failoverConfigValue = failoverConfig;
    if (failoverConfigValue != null) {
      map['failoverConfig'] = pulumi.Input.mapOptionalInputValue<
          ServiceLbPolicyFailoverConfig,
          Map<String, dynamic>>(failoverConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final loadBalancingAlgorithmValue = loadBalancingAlgorithm;
    if (loadBalancingAlgorithmValue != null) {
      map['loadBalancingAlgorithm'] = pulumi.Input.mapOptionalInputValue<
          ServiceLbPolicyLoadBalancingAlgorithm,
          String>(loadBalancingAlgorithmValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceLbPolicyId'] = serviceLbPolicyId;
    return map;
  }

  factory ServiceLbPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLbPolicyArgs(
      autoCapacityDrain:
          pulumi.Input.asOptionalInput<ServiceLbPolicyAutoCapacityDrain>(
              map['autoCapacityDrain']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      failoverConfig:
          pulumi.Input.asOptionalInput<ServiceLbPolicyFailoverConfig>(
              map['failoverConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      loadBalancingAlgorithm:
          pulumi.Input.asOptionalInput<ServiceLbPolicyLoadBalancingAlgorithm>(
              map['loadBalancingAlgorithm']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceLbPolicyId: pulumi.Input.asInput<String>(map['serviceLbPolicyId']),
    );
  }
}
