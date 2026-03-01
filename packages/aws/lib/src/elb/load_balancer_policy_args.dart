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
  LoadBalancerPolicyArgs({
    required String loadBalancerName,
    List<LoadBalancerPolicyPolicyAttribute>? policyAttributes,
    required String policyName,
    required String policyTypeName,
    String? region,
  }) :
      loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
      policyAttributes = pulumi.Input.asOptionalInput<List<LoadBalancerPolicyPolicyAttribute>>(policyAttributes),
      policyName = pulumi.Input.asInput<String>(policyName),
      policyTypeName = pulumi.Input.asInput<String>(policyTypeName),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      loadBalancerName: map['loadBalancerName'] as String,
      policyAttributes: map['policyAttributes'] == null ? null : pulumi.Input.decodeList<LoadBalancerPolicyPolicyAttribute>(map['policyAttributes'], (value) => LoadBalancerPolicyPolicyAttribute.fromMap((value as Map).cast<String, dynamic>())),
      policyName: map['policyName'] as String,
      policyTypeName: map['policyTypeName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

