// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../load_balancer_policy_policy_attribute/load_balancer_policy_policy_attribute.dart';

/// The set of arguments for LoadBalancerPolicy.
class LoadBalancerPolicyArgs {
  /// The load balancer on which the policy is defined.
  final Input<String> loadBalancerName;

  /// Policy attribute to apply to the policy.
  final Input<List<LoadBalancerPolicyPolicyAttribute>>? policyAttributes;

  /// The name of the load balancer policy.
  final Input<String> policyName;

  /// The policy type.
  final Input<String> policyTypeName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LoadBalancerPolicyArgs({
    required this.loadBalancerName,
    this.policyAttributes,
    required this.policyName,
    required this.policyTypeName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loadBalancerName'] = loadBalancerName;
    final policyAttributesValue = policyAttributes;
    if (policyAttributesValue != null) {
      map['policyAttributes'] = Input.mapOptionalInputValue<
              List<LoadBalancerPolicyPolicyAttribute>,
              List<Map<String, dynamic>>>(
          policyAttributesValue,
          (value) => Input.encodeList<LoadBalancerPolicyPolicyAttribute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['policyName'] = policyName;
    map['policyTypeName'] = policyTypeName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LoadBalancerPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPolicyArgs(
      loadBalancerName: Input.asInput<String>(map['loadBalancerName']),
      policyAttributes:
          Input.asOptionalInput<List<LoadBalancerPolicyPolicyAttribute>>(
              map['policyAttributes']),
      policyName: Input.asInput<String>(map['policyName']),
      policyTypeName: Input.asInput<String>(map['policyTypeName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
