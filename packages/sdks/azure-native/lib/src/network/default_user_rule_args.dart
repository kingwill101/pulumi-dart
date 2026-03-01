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
    required pulumi.Output<String> configurationName,
    pulumi.Output<String>? flag,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleCollectionName,
    pulumi.Output<String>? ruleName,
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
      configurationName: pulumi.Output.create<String>(map['configurationName'] as String),
      flag: map['flag'] == null ? null : pulumi.Output.create<String>(map['flag'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleCollectionName: pulumi.Output.create<String>(map['ruleCollectionName'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
    );
  }
}

