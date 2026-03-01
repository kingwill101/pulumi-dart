// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_disaster_recovery_config_args_doc}
/// Arguments for getDisasterRecoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_disaster_recovery_config_args_doc}
class GetDisasterRecoveryConfigArgs {
  /// The Disaster Recovery configuration name
  final pulumi.Input<String> alias;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDisasterRecoveryConfigArgs].
  /// [alias] The Disaster Recovery configuration name
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDisasterRecoveryConfigArgs({
    required String alias,
    required String namespaceName,
    required String resourceGroupName,
  }) :
      alias = pulumi.Input.asInput<String>(alias),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDisasterRecoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetDisasterRecoveryConfigArgs(
      alias: map['alias'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

