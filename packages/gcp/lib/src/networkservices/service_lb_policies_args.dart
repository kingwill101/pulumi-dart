// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_lb_policies_auto_capacity_drain.dart';
import 'service_lb_policies_failover_config.dart';
import 'service_lb_policies_isolation_config.dart';

/// {@template pulumi_networkservices_service_lb_policies_service_lb_policies_args_doc}
/// The set of arguments for ServiceLbPolicies.
/// {@endtemplate}
/// {@macro pulumi_networkservices_service_lb_policies_service_lb_policies_args_doc}
class ServiceLbPoliciesArgs {
  /// Option to specify if an unhealthy MIG/NEG should be considered for global load balancing and traffic routing.
  /// Structure is documented below.
  final pulumi.Input<ServiceLbPoliciesAutoCapacityDrain>? autoCapacityDrain;

  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
  /// Structure is documented below.
  final pulumi.Input<ServiceLbPoliciesFailoverConfig>? failoverConfig;

  /// Configuration to provide isolation support for the associated Backend Service.
  /// Structure is documented below.
  final pulumi.Input<ServiceLbPoliciesIsolationConfig>? isolationConfig;

  /// Set of label tags associated with the ServiceLbPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// Possible values are: `SPRAY_TO_REGION`, `SPRAY_TO_WORLD`, `WATERFALL_BY_REGION`, `WATERFALL_BY_ZONE`.
  final pulumi.Input<String>? loadBalancingAlgorithm;

  /// The location of the service lb policy.
  final pulumi.Input<String> location;

  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ServiceLbPoliciesArgs].
  /// [autoCapacityDrain] Option to specify if an unhealthy MIG/NEG should be considered for global load balancing and traffic routing.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [failoverConfig] Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
  /// [isolationConfig] Configuration to provide isolation support for the associated Backend Service.
  /// [labels] Set of label tags associated with the ServiceLbPolicy resource.
  /// [loadBalancingAlgorithm] The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// [location] The location of the service lb policy.
  /// [name] Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  /// [project] The ID of the project in which the resource belongs.
  ServiceLbPoliciesArgs({
    ServiceLbPoliciesAutoCapacityDrain? autoCapacityDrain,
    String? description,
    ServiceLbPoliciesFailoverConfig? failoverConfig,
    ServiceLbPoliciesIsolationConfig? isolationConfig,
    Map<String, String>? labels,
    String? loadBalancingAlgorithm,
    required String location,
    String? name,
    String? project,
  })  : autoCapacityDrain =
            pulumi.Input.asOptionalInput<ServiceLbPoliciesAutoCapacityDrain>(
                autoCapacityDrain),
        description = pulumi.Input.asOptionalInput<String>(description),
        failoverConfig =
            pulumi.Input.asOptionalInput<ServiceLbPoliciesFailoverConfig>(
                failoverConfig),
        isolationConfig =
            pulumi.Input.asOptionalInput<ServiceLbPoliciesIsolationConfig>(
                isolationConfig),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        loadBalancingAlgorithm =
            pulumi.Input.asOptionalInput<String>(loadBalancingAlgorithm),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoCapacityDrainValue = autoCapacityDrain;
    if (autoCapacityDrainValue != null) {
      map['autoCapacityDrain'] = pulumi.Input.mapOptionalInputValue<
              ServiceLbPoliciesAutoCapacityDrain, Map<String, dynamic>>(
          autoCapacityDrainValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final failoverConfigValue = failoverConfig;
    if (failoverConfigValue != null) {
      map['failoverConfig'] = pulumi.Input.mapOptionalInputValue<
          ServiceLbPoliciesFailoverConfig,
          Map<String, dynamic>>(failoverConfigValue, (value) => value.toMap());
    }
    final isolationConfigValue = isolationConfig;
    if (isolationConfigValue != null) {
      map['isolationConfig'] = pulumi.Input.mapOptionalInputValue<
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
      autoCapacityDrain: map['autoCapacityDrain'] == null
          ? null
          : ServiceLbPoliciesAutoCapacityDrain.fromMap(
              (map['autoCapacityDrain'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      failoverConfig: map['failoverConfig'] == null
          ? null
          : ServiceLbPoliciesFailoverConfig.fromMap(
              (map['failoverConfig'] as Map).cast<String, dynamic>()),
      isolationConfig: map['isolationConfig'] == null
          ? null
          : ServiceLbPoliciesIsolationConfig.fromMap(
              (map['isolationConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      loadBalancingAlgorithm: map['loadBalancingAlgorithm'] == null
          ? null
          : map['loadBalancingAlgorithm'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
