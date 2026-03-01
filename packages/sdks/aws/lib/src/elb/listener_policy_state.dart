// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ListenerPolicy resources.
class ListenerPolicyState {
  /// The load balancer to attach the policy to.
  final pulumi.Input<String>? loadBalancerName;
  /// The load balancer listener port to apply the policy to.
  final pulumi.Input<int>? loadBalancerPort;
  /// List of Policy Names to apply to the backend server.
  final pulumi.Input<List<String>>? policyNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of arbitrary keys and values that, when changed, will trigger an update.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [ListenerPolicyState].
  /// [loadBalancerName] The load balancer to attach the policy to.
  /// [loadBalancerPort] The load balancer listener port to apply the policy to.
  /// [policyNames] List of Policy Names to apply to the backend server.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger an update.
  ListenerPolicyState({
    pulumi.Output<String>? loadBalancerName,
    pulumi.Output<int>? loadBalancerPort,
    pulumi.Output<List<String>>? policyNames,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? triggers,
  }) :
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      loadBalancerPort = pulumi.Input.asOptionalInput<int>(loadBalancerPort),
      policyNames = pulumi.Input.asOptionalInput<List<String>>(policyNames),
      region = pulumi.Input.asOptionalInput<String>(region),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerName': ?loadBalancerName,
      'loadBalancerPort': ?loadBalancerPort,
      'policyNames': ?policyNames,
      'region': ?region,
      'triggers': ?triggers,
    };
  }

  factory ListenerPolicyState.fromMap(Map<String, dynamic> map) {
    return ListenerPolicyState(
      loadBalancerName: map['loadBalancerName'] == null ? null : pulumi.Output.create<String>(map['loadBalancerName'] as String),
      loadBalancerPort: map['loadBalancerPort'] == null ? null : pulumi.Output.create<int>(map['loadBalancerPort'] as int),
      policyNames: map['policyNames'] == null ? null : pulumi.Output.create<List<String>>((map['policyNames'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
    );
  }
}

