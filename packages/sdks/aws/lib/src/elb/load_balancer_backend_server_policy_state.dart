// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerBackendServerPolicy resources.
class LoadBalancerBackendServerPolicyState {
  /// The instance port to apply the policy to.
  final pulumi.Input<int>? instancePort;
  /// The load balancer to attach the policy to.
  final pulumi.Input<String>? loadBalancerName;
  /// List of Policy Names to apply to the backend server.
  final pulumi.Input<List<String>>? policyNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LoadBalancerBackendServerPolicyState].
  /// [instancePort] The instance port to apply the policy to.
  /// [loadBalancerName] The load balancer to attach the policy to.
  /// [policyNames] List of Policy Names to apply to the backend server.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LoadBalancerBackendServerPolicyState({
    this.instancePort,
    this.loadBalancerName,
    this.policyNames,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePort': ?instancePort,
      'loadBalancerName': ?loadBalancerName,
      'policyNames': ?policyNames,
      'region': ?region,
    };
  }

  factory LoadBalancerBackendServerPolicyState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendServerPolicyState(
      instancePort: (() { final guardedValue = map['instancePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      loadBalancerName: (() { final guardedValue = map['loadBalancerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyNames: (() { final guardedValue = map['policyNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

