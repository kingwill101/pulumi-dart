// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_network_rule_network_rule_args_doc}
/// The set of arguments for NetworkRule.
/// {@endtemplate}
/// {@macro pulumi_kms_network_rule_network_rule_args_doc}
class NetworkRuleArgs {
  /// Description.
  final pulumi.Input<String>? description;
  /// Network Rule Name.
  final pulumi.Input<String>? networkRuleName;
  /// Allowed private network addresses.
  final pulumi.Input<List<String>> sourcePrivateIps;

  /// Creates a new [NetworkRuleArgs].
  /// [description] Description.
  /// [networkRuleName] Network Rule Name.
  /// [sourcePrivateIps] Allowed private network addresses.
  NetworkRuleArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? networkRuleName,
    required pulumi.Output<List<String>> sourcePrivateIps,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      networkRuleName = pulumi.Input.asOptionalInput<String>(networkRuleName),
      sourcePrivateIps = pulumi.Input.asInput<List<String>>(sourcePrivateIps);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'networkRuleName': ?networkRuleName,
      'sourcePrivateIps': sourcePrivateIps,
    };
  }

  factory NetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return NetworkRuleArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      networkRuleName: map['networkRuleName'] == null ? null : pulumi.Output.create<String>(map['networkRuleName'] as String),
      sourcePrivateIps: pulumi.Output.create<List<String>>((map['sourcePrivateIps'] as List).cast<String>()),
    );
  }
}

