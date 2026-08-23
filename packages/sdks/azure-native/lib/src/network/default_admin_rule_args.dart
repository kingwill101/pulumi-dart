// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_default_admin_rule_args_doc}
/// The set of arguments for DefaultAdminRule.
/// {@endtemplate}
/// {@macro pulumi_network_default_admin_rule_args_doc}
class DefaultAdminRuleArgs {
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// Default rule flag.
  final pulumi.Input<String>? flag;
  /// Whether the rule is custom or default.
  /// Expected value is 'Default'.
  final pulumi.Input<String> kind;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;
  /// The name of the rule.
  final pulumi.Input<String>? ruleName;

  /// Creates a new [DefaultAdminRuleArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [flag] Default rule flag.
  /// [kind] Whether the rule is custom or default.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  /// [ruleName] The name of the rule.
  const DefaultAdminRuleArgs({
    required this.configurationName,
    this.flag,
    required this.kind,
    required this.networkManagerName,
    required this.resourceGroupName,
    required this.ruleCollectionName,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'flag': ?flag,
      'kind': kind,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ruleCollectionName,
      'ruleName': ?ruleName,
    };
  }

  factory DefaultAdminRuleArgs.fromMap(Map<String, dynamic> map) {
    return DefaultAdminRuleArgs(
      configurationName: pulumi.Input.fromValue(map['configurationName'] as String),
      flag: (() { final guardedValue = map['flag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleCollectionName: pulumi.Input.fromValue(map['ruleCollectionName'] as String),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
