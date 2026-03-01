// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_queue_authorization_rule_args_doc}
/// Arguments for getQueueAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_queue_authorization_rule_args_doc}
class GetQueueAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The queue name.
  final pulumi.Input<String> queueName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetQueueAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [queueName] The queue name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetQueueAuthorizationRuleArgs({
    required String authorizationRuleName,
    required String namespaceName,
    required String queueName,
    required String resourceGroupName,
  }) :
      authorizationRuleName = pulumi.Input.asInput<String>(authorizationRuleName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      queueName = pulumi.Input.asInput<String>(queueName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'namespaceName': namespaceName,
      'queueName': queueName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetQueueAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueAuthorizationRuleArgs(
      authorizationRuleName: map['authorizationRuleName'] as String,
      namespaceName: map['namespaceName'] as String,
      queueName: map['queueName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

