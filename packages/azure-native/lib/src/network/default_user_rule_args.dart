// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_default_user_rule_args_doc}
/// The set of arguments for DefaultUserRule.
/// {@endtemplate}
/// {@macro pulumi_network_default_user_rule_args_doc}
class DefaultUserRuleArgs {
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

  /// Creates a new [DefaultUserRuleArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [flag] Default rule flag.
  /// [kind] Whether the rule is custom or default.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  /// [ruleName] The name of the rule.
  DefaultUserRuleArgs({
    required String configurationName,
    String? flag,
    required String kind,
    required String networkManagerName,
    required String resourceGroupName,
    required String ruleCollectionName,
    String? ruleName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      flag = pulumi.Input.asOptionalInput<String>(flag),
      kind = pulumi.Input.asInput<String>(kind),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollectionName = pulumi.Input.asInput<String>(ruleCollectionName),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName);

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

  factory DefaultUserRuleArgs.fromMap(Map<String, dynamic> map) {
    return DefaultUserRuleArgs(
      configurationName: map['configurationName'] as String,
      flag: map['flag'] == null ? null : map['flag'] as String,
      kind: map['kind'] as String,
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleCollectionName: map['ruleCollectionName'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
    );
  }
}

