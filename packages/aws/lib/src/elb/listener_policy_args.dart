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
  final pulumi.Input<List<String>>? policyNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of arbitrary keys and values that, when changed, will trigger an update.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [ListenerPolicyArgs].
  /// [loadBalancerName] The load balancer to attach the policy to.
  /// [loadBalancerPort] The load balancer listener port to apply the policy to.
  /// [policyNames] List of Policy Names to apply to the backend server.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger an update.
  ListenerPolicyArgs({
    required String loadBalancerName,
    required int loadBalancerPort,
    List<String>? policyNames,
    String? region,
    Map<String, String>? triggers,
  }) : loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
       loadBalancerPort = pulumi.Input.asInput<int>(loadBalancerPort),
       policyNames = pulumi.Input.asOptionalInput<List<String>>(policyNames),
       region = pulumi.Input.asOptionalInput<String>(region),
       triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

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
      loadBalancerName: map['loadBalancerName'] as String,
      loadBalancerPort: map['loadBalancerPort'] as int,
      policyNames: map['policyNames'] == null
          ? null
          : (map['policyNames'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      triggers: map['triggers'] == null
          ? null
          : (map['triggers'] as Map).cast<String, String>(),
    );
  }
}
