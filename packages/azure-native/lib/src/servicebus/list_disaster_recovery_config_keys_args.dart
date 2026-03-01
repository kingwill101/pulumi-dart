// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_list_disaster_recovery_config_keys_args_doc}
/// Arguments for listDisasterRecoveryConfigKeys.
/// {@endtemplate}
/// {@macro pulumi_servicebus_list_disaster_recovery_config_keys_args_doc}
class ListDisasterRecoveryConfigKeysArgs {
  /// The Disaster Recovery configuration name
  final pulumi.Input<String> alias;
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListDisasterRecoveryConfigKeysArgs].
  /// [alias] The Disaster Recovery configuration name
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListDisasterRecoveryConfigKeysArgs({
    required String alias,
    required String authorizationRuleName,
    required String namespaceName,
    required String resourceGroupName,
  }) :
      alias = pulumi.Input.asInput<String>(alias),
      authorizationRuleName = pulumi.Input.asInput<String>(authorizationRuleName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'authorizationRuleName': authorizationRuleName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListDisasterRecoveryConfigKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListDisasterRecoveryConfigKeysArgs(
      alias: map['alias'] as String,
      authorizationRuleName: map['authorizationRuleName'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

