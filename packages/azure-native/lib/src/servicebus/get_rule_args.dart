// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_rule_args_doc}
/// Arguments for getRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_rule_args_doc}
class GetRuleArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The rule name.
  final pulumi.Input<String> ruleName;
  /// The subscription name.
  final pulumi.Input<String> subscriptionName;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetRuleArgs].
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The rule name.
  /// [subscriptionName] The subscription name.
  /// [topicName] The topic name.
  GetRuleArgs({
    required String namespaceName,
    required String resourceGroupName,
    required String ruleName,
    required String subscriptionName,
    required String topicName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      subscriptionName = pulumi.Input.asInput<String>(subscriptionName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
      'subscriptionName': subscriptionName,
      'topicName': topicName,
    };
  }

  factory GetRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleArgs(
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleName: map['ruleName'] as String,
      subscriptionName: map['subscriptionName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

