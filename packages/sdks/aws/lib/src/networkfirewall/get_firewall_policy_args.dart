// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkfirewall_get_firewall_policy_get_firewall_policy_args_doc}
/// Arguments for getFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_get_firewall_policy_get_firewall_policy_args_doc}
class GetFirewallPolicyArgs {
  /// ARN of the firewall policy.
  final pulumi.Input<String>? arn;
  /// Descriptive name of the firewall policy.
  ///
  /// One or more of these arguments is required.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the firewall policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetFirewallPolicyArgs].
  /// [arn] ARN of the firewall policy.
  /// [name] Descriptive name of the firewall policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the firewall policy.
  const GetFirewallPolicyArgs({
    this.arn,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyArgs(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
