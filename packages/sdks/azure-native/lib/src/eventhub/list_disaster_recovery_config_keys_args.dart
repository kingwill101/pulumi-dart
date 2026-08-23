// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_list_disaster_recovery_config_keys_args_doc}
/// Arguments for listDisasterRecoveryConfigKeys.
/// {@endtemplate}
/// {@macro pulumi_eventhub_list_disaster_recovery_config_keys_args_doc}
class ListDisasterRecoveryConfigKeysArgs {
  /// The Disaster Recovery configuration name
  final pulumi.Input<String> alias;
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListDisasterRecoveryConfigKeysArgs].
  /// [alias] The Disaster Recovery configuration name
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  const ListDisasterRecoveryConfigKeysArgs({
    required this.alias,
    required this.authorizationRuleName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

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
      alias: pulumi.Input.fromValue(map['alias'] as String),
      authorizationRuleName: pulumi.Input.fromValue(map['authorizationRuleName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
