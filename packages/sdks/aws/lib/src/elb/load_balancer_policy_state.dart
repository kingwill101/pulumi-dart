// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_policy_policy_attribute.dart';

/// Input properties used for looking up and filtering LoadBalancerPolicy resources.
class LoadBalancerPolicyState {
  /// The load balancer on which the policy is defined.
  final pulumi.Input<String?>? loadBalancerName;
  /// Policy attribute to apply to the policy.
  final pulumi.Input<List<LoadBalancerPolicyPolicyAttribute>?>? policyAttributes;
  /// The name of the load balancer policy.
  final pulumi.Input<String?>? policyName;
  /// The policy type.
  final pulumi.Input<String?>? policyTypeName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [LoadBalancerPolicyState].
  /// [loadBalancerName] The load balancer on which the policy is defined.
  /// [policyAttributes] Policy attribute to apply to the policy.
  /// [policyName] The name of the load balancer policy.
  /// [policyTypeName] The policy type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const LoadBalancerPolicyState({
    this.loadBalancerName,
    this.policyAttributes,
    this.policyName,
    this.policyTypeName,
    this.region,
  });

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
      loadBalancerName: (() { final guardedValue = map['loadBalancerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyAttributes: (() { final guardedValue = map['policyAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerPolicyPolicyAttribute>(guardedValue, (value) => LoadBalancerPolicyPolicyAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyTypeName: (() { final guardedValue = map['policyTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
