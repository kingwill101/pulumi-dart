// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_disaster_recovery_config_args_doc}
/// Arguments for getDisasterRecoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_disaster_recovery_config_args_doc}
class GetDisasterRecoveryConfigArgs {
  /// The Disaster Recovery configuration name
  final pulumi.Input<String> alias;
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDisasterRecoveryConfigArgs].
  /// [alias] The Disaster Recovery configuration name
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  GetDisasterRecoveryConfigArgs({
    required this.alias,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDisasterRecoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetDisasterRecoveryConfigArgs(
      alias: (map['alias'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

