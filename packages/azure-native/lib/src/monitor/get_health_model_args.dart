// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_health_model_args_doc}
/// Arguments for getHealthModel.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_health_model_args_doc}
class GetHealthModelArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHealthModelArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [healthModelName] Name of health model resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetHealthModelArgs({
    required String azureMonitorWorkspaceName,
    required String healthModelName,
    required String resourceGroupName,
  }) :
      azureMonitorWorkspaceName = pulumi.Input.asInput<String>(azureMonitorWorkspaceName),
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHealthModelArgs.fromMap(Map<String, dynamic> map) {
    return GetHealthModelArgs(
      azureMonitorWorkspaceName: map['azureMonitorWorkspaceName'] as String,
      healthModelName: map['healthModelName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

