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
  GetFirewallPolicyArgs({
    String? arn,
    String? name,
    String? region,
    Map<String, String>? tags,
  })  : arn = pulumi.Input.asOptionalInput<String>(arn),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
