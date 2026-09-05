// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elb_listener_policy_listener_policy_args_doc}
/// The set of arguments for ListenerPolicy.
/// {@endtemplate}
/// {@macro pulumi_elb_listener_policy_listener_policy_args_doc}
class ListenerPolicyArgs {
  /// The load balancer to attach the policy to.
  final pulumi.Input<String> loadBalancerName;
  /// The load balancer listener port to apply the policy to.
  final pulumi.Input<int> loadBalancerPort;
  /// List of Policy Names to apply to the backend server.
  final pulumi.Input<List<String>?>? policyNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of arbitrary keys and values that, when changed, will trigger an update.
  final pulumi.Input<Map<String, String>?>? triggers;

  /// Creates a new [ListenerPolicyArgs].
  /// [loadBalancerName] The load balancer to attach the policy to.
  /// [loadBalancerPort] The load balancer listener port to apply the policy to.
  /// [policyNames] List of Policy Names to apply to the backend server.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger an update.
  const ListenerPolicyArgs({
    required this.loadBalancerName,
    required this.loadBalancerPort,
    this.policyNames,
    this.region,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerName': loadBalancerName,
      'loadBalancerPort': loadBalancerPort,
      'policyNames': ?policyNames,
      'region': ?region,
      'triggers': ?triggers,
    };
  }

  factory ListenerPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ListenerPolicyArgs(
      loadBalancerName: pulumi.Input.fromValue(map['loadBalancerName'] as String),
      loadBalancerPort: pulumi.Input.fromValue((map['loadBalancerPort'] as num).toInt()),
      policyNames: (() { final guardedValue = map['policyNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
