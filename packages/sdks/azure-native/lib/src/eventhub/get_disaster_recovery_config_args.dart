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
    required pulumi.Output<String> alias,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
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
      alias: pulumi.Output.create<String>(map['alias'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

