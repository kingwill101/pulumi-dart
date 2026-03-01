// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_signal_definition_args_doc}
/// Arguments for getSignalDefinition.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_signal_definition_args_doc}
class GetSignalDefinitionArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the signal definition. Must be unique within a health model.
  final pulumi.Input<String> signalDefinitionName;

  /// Creates a new [GetSignalDefinitionArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [healthModelName] Name of health model resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [signalDefinitionName] Name of the signal definition. Must be unique within a health model.
  GetSignalDefinitionArgs({
    required pulumi.Output<String> azureMonitorWorkspaceName,
    required pulumi.Output<String> healthModelName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> signalDefinitionName,
  }) :
      azureMonitorWorkspaceName = pulumi.Input.asInput<String>(azureMonitorWorkspaceName),
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      signalDefinitionName = pulumi.Input.asInput<String>(signalDefinitionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
      'signalDefinitionName': signalDefinitionName,
    };
  }

  factory GetSignalDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetSignalDefinitionArgs(
      azureMonitorWorkspaceName: pulumi.Output.create<String>(map['azureMonitorWorkspaceName'] as String),
      healthModelName: pulumi.Output.create<String>(map['healthModelName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      signalDefinitionName: pulumi.Output.create<String>(map['signalDefinitionName'] as String),
    );
  }
}

