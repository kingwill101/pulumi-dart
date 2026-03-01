// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_policy_policy_attribute.dart';

/// Input properties used for looking up and filtering LoadBalancerPolicy resources.
class LoadBalancerPolicyState {
  /// The load balancer on which the policy is defined.
  final pulumi.Input<String>? loadBalancerName;
  /// Policy attribute to apply to the policy.
  final pulumi.Input<List<LoadBalancerPolicyPolicyAttribute>>? policyAttributes;
  /// The name of the load balancer policy.
  final pulumi.Input<String>? policyName;
  /// The policy type.
  final pulumi.Input<String>? policyTypeName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LoadBalancerPolicyState].
  /// [loadBalancerName] The load balancer on which the policy is defined.
  /// [policyAttributes] Policy attribute to apply to the policy.
  /// [policyName] The name of the load balancer policy.
  /// [policyTypeName] The policy type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LoadBalancerPolicyState({
    pulumi.Output<String>? loadBalancerName,
    pulumi.Output<List<LoadBalancerPolicyPolicyAttribute>>? policyAttributes,
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? policyTypeName,
    pulumi.Output<String>? region,
  }) :
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      policyAttributes = pulumi.Input.asOptionalInput<List<LoadBalancerPolicyPolicyAttribute>>(policyAttributes),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      policyTypeName = pulumi.Input.asOptionalInput<String>(policyTypeName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerName': ?loadBalancerName,
      'policyAttributes': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerPolicyPolicyAttribute>, List<Map<String, dynamic>>>(policyAttributes, (value) => pulumi.Input.encodeList<LoadBalancerPolicyPolicyAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyName': ?policyName,
      'policyTypeName': ?policyTypeName,
      'region': ?region,
    };
  }

  factory LoadBalancerPolicyState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPolicyState(
      loadBalancerName: map['loadBalancerName'] == null ? null : pulumi.Output.create<String>(map['loadBalancerName'] as String),
      policyAttributes: map['policyAttributes'] == null ? null : pulumi.Output.create<List<LoadBalancerPolicyPolicyAttribute>>(pulumi.Input.decodeList<LoadBalancerPolicyPolicyAttribute>(map['policyAttributes'], (value) => LoadBalancerPolicyPolicyAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      policyTypeName: map['policyTypeName'] == null ? null : pulumi.Output.create<String>(map['policyTypeName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

