// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_entity_args_doc}
/// Arguments for getEntity.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_entity_args_doc}
class GetEntityArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// Name of the entity. Must be unique within a health model.
  final pulumi.Input<String> entityName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEntityArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [entityName] Name of the entity. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEntityArgs({
    required pulumi.Output<String> azureMonitorWorkspaceName,
    required pulumi.Output<String> entityName,
    required pulumi.Output<String> healthModelName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      azureMonitorWorkspaceName = pulumi.Input.asInput<String>(azureMonitorWorkspaceName),
      entityName = pulumi.Input.asInput<String>(entityName),
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'entityName': entityName,
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEntityArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityArgs(
      azureMonitorWorkspaceName: pulumi.Output.create<String>(map['azureMonitorWorkspaceName'] as String),
      entityName: pulumi.Output.create<String>(map['entityName'] as String),
      healthModelName: pulumi.Output.create<String>(map['healthModelName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

