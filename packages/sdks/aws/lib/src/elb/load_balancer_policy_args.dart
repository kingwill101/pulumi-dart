// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_policy_policy_attribute.dart';

/// {@template pulumi_elb_load_balancer_policy_load_balancer_policy_args_doc}
/// The set of arguments for LoadBalancerPolicy.
/// {@endtemplate}
/// {@macro pulumi_elb_load_balancer_policy_load_balancer_policy_args_doc}
class LoadBalancerPolicyArgs {
  /// The load balancer on which the policy is defined.
  final pulumi.Input<String> loadBalancerName;
  /// Policy attribute to apply to the policy.
  final pulumi.Input<List<LoadBalancerPolicyPolicyAttribute>>? policyAttributes;
  /// The name of the load balancer policy.
  final pulumi.Input<String> policyName;
  /// The policy type.
  final pulumi.Input<String> policyTypeName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LoadBalancerPolicyArgs].
  /// [loadBalancerName] The load balancer on which the policy is defined.
  /// [policyAttributes] Policy attribute to apply to the policy.
  /// [policyName] The name of the load balancer policy.
  /// [policyTypeName] The policy type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const LoadBalancerPolicyArgs({
    required this.loadBalancerName,
    this.policyAttributes,
    required this.policyName,
    required this.policyTypeName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerName': loadBalancerName,
      'policyAttributes': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerPolicyPolicyAttribute>, List<Map<String, dynamic>>>(policyAttributes, (value) => pulumi.Input.encodeList<LoadBalancerPolicyPolicyAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyName': policyName,
      'policyTypeName': policyTypeName,
      'region': ?region,
    };
  }

  factory LoadBalancerPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPolicyArgs(
      loadBalancerName: pulumi.Input.fromValue(map['loadBalancerName'] as String),
      policyAttributes: (() { final guardedValue = map['policyAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerPolicyPolicyAttribute>(guardedValue, (value) => LoadBalancerPolicyPolicyAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyTypeName: pulumi.Input.fromValue(map['policyTypeName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

