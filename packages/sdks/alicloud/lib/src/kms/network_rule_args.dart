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
    this.description,
    this.networkRuleName,
    required this.sourcePrivateIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'networkRuleName': ?networkRuleName,
      'sourcePrivateIps': sourcePrivateIps,
    };
  }

  factory NetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return NetworkRuleArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRuleName: (() { final guardedValue = map['networkRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePrivateIps: pulumi.Input.fromValue((map['sourcePrivateIps'] as List).cast<String>()),
    );
  }
}

