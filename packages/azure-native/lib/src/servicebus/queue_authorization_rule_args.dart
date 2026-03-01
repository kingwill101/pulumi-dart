// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rights.dart';

/// {@template pulumi_servicebus_queue_authorization_rule_args_doc}
/// The set of arguments for QueueAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_queue_authorization_rule_args_doc}
class QueueAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String>? authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The queue name.
  final pulumi.Input<String> queueName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The rights associated with the rule.
  final pulumi.Input<List<AccessRights>> rights;

  /// Creates a new [QueueAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [queueName] The queue name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rights] The rights associated with the rule.
  QueueAuthorizationRuleArgs({
    String? authorizationRuleName,
    required String namespaceName,
    required String queueName,
    required String resourceGroupName,
    required List<AccessRights> rights,
  }) :
      authorizationRuleName = pulumi.Input.asOptionalInput<String>(authorizationRuleName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      queueName = pulumi.Input.asInput<String>(queueName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rights = pulumi.Input.asInput<List<AccessRights>>(rights);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'namespaceName': namespaceName,
      'queueName': queueName,
      'resourceGroupName': resourceGroupName,
      'rights': pulumi.Input.mapInputValue<List<AccessRights>, List<String>>(rights, (value) => pulumi.Input.encodeList<AccessRights, String>(value, (value) => value.value)),
    };
  }

  factory QueueAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return QueueAuthorizationRuleArgs(
      authorizationRuleName: map['authorizationRuleName'] == null ? null : map['authorizationRuleName'] as String,
      namespaceName: map['namespaceName'] as String,
      queueName: map['queueName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      rights: pulumi.Input.decodeList<AccessRights>(map['rights'], (value) => AccessRights.fromValue(value as String)),
    );
  }
}

