// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_lb_policies_auto_capacity_drain/service_lb_policies_auto_capacity_drain.dart';
import '../service_lb_policies_failover_config/service_lb_policies_failover_config.dart';
import '../service_lb_policies_isolation_config/service_lb_policies_isolation_config.dart';

/// The set of arguments for ServiceLbPolicies.
class ServiceLbPoliciesArgs {
  /// Option to specify if an unhealthy MIG/NEG should be considered for global load balancing and traffic routing.
  /// Structure is documented below.
  final Input<ServiceLbPoliciesAutoCapacityDrain>? autoCapacityDrain;

  /// A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
  /// Structure is documented below.
  final Input<ServiceLbPoliciesFailoverConfig>? failoverConfig;

  /// Configuration to provide isolation support for the associated Backend Service.
  /// Structure is documented below.
  final Input<ServiceLbPoliciesIsolationConfig>? isolationConfig;

  /// Set of label tags associated with the ServiceLbPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// Possible values are: `SPRAY_TO_REGION`, `SPRAY_TO_WORLD`, `WATERFALL_BY_REGION`, `WATERFALL_BY_ZONE`.
  final Input<String>? loadBalancingAlgorithm;

  /// The location of the service lb policy.
  final Input<String> location;

  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ServiceLbPoliciesArgs({
    this.autoCapacityDrain,
    this.description,
    this.failoverConfig,
    this.isolationConfig,
    this.labels,
    this.loadBalancingAlgorithm,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoCapacityDrainValue = autoCapacityDrain;
    if (autoCapacityDrainValue != null) {
      map['autoCapacityDrain'] = Input.mapOptionalInputValue<
              ServiceLbPoliciesAutoCapacityDrain, Map<String, dynamic>>(
          autoCapacityDrainValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final failoverConfigValue = failoverConfig;
    if (failoverConfigValue != null) {
      map['failoverConfig'] = Input.mapOptionalInputValue<
          ServiceLbPoliciesFailoverConfig,
          Map<String, dynamic>>(failoverConfigValue, (value) => value.toMap());
    }
    final isolationConfigValue = isolationConfig;
    if (isolationConfigValue != null) {
      map['isolationConfig'] = Input.mapOptionalInputValue<
          ServiceLbPoliciesIsolationConfig,
          Map<String, dynamic>>(isolationConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final loadBalancingAlgorithmValue = loadBalancingAlgorithm;
    if (loadBalancingAlgorithmValue != null) {
      map['loadBalancingAlgorithm'] = loadBalancingAlgorithmValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ServiceLbPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLbPoliciesArgs(
      autoCapacityDrain:
          Input.asOptionalInput<ServiceLbPoliciesAutoCapacityDrain>(
              map['autoCapacityDrain']),
      description: Input.asOptionalInput<String>(map['description']),
      failoverConfig: Input.asOptionalInput<ServiceLbPoliciesFailoverConfig>(
          map['failoverConfig']),
      isolationConfig: Input.asOptionalInput<ServiceLbPoliciesIsolationConfig>(
          map['isolationConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      loadBalancingAlgorithm:
          Input.asOptionalInput<String>(map['loadBalancingAlgorithm']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
