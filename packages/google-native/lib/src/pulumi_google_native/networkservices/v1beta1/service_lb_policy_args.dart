// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'service_lb_policy_auto_capacity_drain.dart';
import 'service_lb_policy_failover_config.dart';
import 'service_lb_policy_load_balancing_algorithm.dart';

/// The set of arguments for ServiceLbPolicy.
class ServiceLbPolicyArgs {
  /// Optional. Configuration to automatically move traffic away for unhealthy IG/NEG for the associated Backend Service.
  final Input<ServiceLbPolicyAutoCapacityDrain>? autoCapacityDrain;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// Optional. Configuration related to health based failover.
  final Input<ServiceLbPolicyFailoverConfig>? failoverConfig;

  /// Optional. Set of label tags associated with the ServiceLbPolicy resource.
  final Input<Map<String, String>>? labels;

  /// Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  final Input<ServiceLbPolicyLoadBalancingAlgorithm>? loadBalancingAlgorithm;
  final Input<String>? location;

  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  final Input<String>? name;
  final Input<String>? project;

  /// Required. Short name of the ServiceLbPolicy resource to be created. E.g. for resource name `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`. the id is value of {service_lb_policy_name}
  final Input<String> serviceLbPolicyId;

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
      map['autoCapacityDrain'] = Input.mapOptionalInputValue<
              ServiceLbPolicyAutoCapacityDrain, Map<String, dynamic>>(
          autoCapacityDrainValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final failoverConfigValue = failoverConfig;
    if (failoverConfigValue != null) {
      map['failoverConfig'] = Input.mapOptionalInputValue<
          ServiceLbPolicyFailoverConfig,
          Map<String, dynamic>>(failoverConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final loadBalancingAlgorithmValue = loadBalancingAlgorithm;
    if (loadBalancingAlgorithmValue != null) {
      map['loadBalancingAlgorithm'] = Input.mapOptionalInputValue<
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
          Input.asOptionalInput<ServiceLbPolicyAutoCapacityDrain>(
              map['autoCapacityDrain']),
      description: Input.asOptionalInput<String>(map['description']),
      failoverConfig: Input.asOptionalInput<ServiceLbPolicyFailoverConfig>(
          map['failoverConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      loadBalancingAlgorithm:
          Input.asOptionalInput<ServiceLbPolicyLoadBalancingAlgorithm>(
              map['loadBalancingAlgorithm']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceLbPolicyId: Input.asInput<String>(map['serviceLbPolicyId']),
    );
  }
}
