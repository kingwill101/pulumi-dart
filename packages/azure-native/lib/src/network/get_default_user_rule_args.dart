// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_default_user_rule_args_doc}
/// Arguments for getDefaultUserRule.
/// {@endtemplate}
/// {@macro pulumi_network_get_default_user_rule_args_doc}
class GetDefaultUserRuleArgs {
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;
  /// The name of the rule.
  final pulumi.Input<String> ruleName;

  /// Creates a new [GetDefaultUserRuleArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  /// [ruleName] The name of the rule.
  GetDefaultUserRuleArgs({
    required String configurationName,
    required String networkManagerName,
    required String resourceGroupName,
    required String ruleCollectionName,
    required String ruleName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollectionName = pulumi.Input.asInput<String>(ruleCollectionName),
      ruleName = pulumi.Input.asInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ruleCollectionName,
      'ruleName': ruleName,
    };
  }

  factory GetDefaultUserRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultUserRuleArgs(
      configurationName: map['configurationName'] as String,
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleCollectionName: map['ruleCollectionName'] as String,
      ruleName: map['ruleName'] as String,
    );
  }
}

