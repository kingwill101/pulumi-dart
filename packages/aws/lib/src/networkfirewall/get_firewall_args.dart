// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkfirewall_get_firewall_get_firewall_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_get_firewall_get_firewall_args_doc}
class GetFirewallArgs {
  /// ARN of the firewall.
  final pulumi.Input<String>? arn;

  /// Descriptive name of the firewall.
  ///
  /// One or more of these arguments is required.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetFirewallArgs].
  /// [arn] ARN of the firewall.
  /// [name] Descriptive name of the firewall.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  GetFirewallArgs({
    String? arn,
    String? name,
    String? region,
    Map<String, String>? tags,
  }) : arn = pulumi.Input.asOptionalInput<String>(arn),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
