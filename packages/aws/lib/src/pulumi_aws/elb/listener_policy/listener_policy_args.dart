// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ListenerPolicy.
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

  ListenerPolicyArgs({
    required this.loadBalancerName,
    required this.loadBalancerPort,
    this.policyNames,
    this.region,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loadBalancerName'] = loadBalancerName;
    map['loadBalancerPort'] = loadBalancerPort;
    final policyNamesValue = policyNames;
    if (policyNamesValue != null) {
      map['policyNames'] = policyNamesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    return map;
  }

  factory ListenerPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ListenerPolicyArgs(
      loadBalancerName: pulumi.Input.asInput<String>(map['loadBalancerName']),
      loadBalancerPort: pulumi.Input.asInput<int>(map['loadBalancerPort']),
      policyNames:
          pulumi.Input.asOptionalInput<List<String>>(map['policyNames']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      triggers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['triggers']),
    );
  }
}
