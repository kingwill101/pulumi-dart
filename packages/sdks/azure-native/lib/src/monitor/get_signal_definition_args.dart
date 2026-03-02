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
    required this.azureMonitorWorkspaceName,
    required this.healthModelName,
    required this.resourceGroupName,
    required this.signalDefinitionName,
  });

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
      azureMonitorWorkspaceName: (map['azureMonitorWorkspaceName'] as String).input(),
      healthModelName: (map['healthModelName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      signalDefinitionName: (map['signalDefinitionName'] as String).input(),
    );
  }
}

