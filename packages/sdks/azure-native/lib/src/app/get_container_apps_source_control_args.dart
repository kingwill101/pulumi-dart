// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_container_apps_source_control_args_doc}
/// Arguments for getContainerAppsSourceControl.
/// {@endtemplate}
/// {@macro pulumi_app_get_container_apps_source_control_args_doc}
class GetContainerAppsSourceControlArgs {
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Container App SourceControl.
  final pulumi.Input<String> sourceControlName;

  /// Creates a new [GetContainerAppsSourceControlArgs].
  /// [containerAppName] Name of the Container App.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceControlName] Name of the Container App SourceControl.
  GetContainerAppsSourceControlArgs({
    required pulumi.Output<String> containerAppName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sourceControlName,
  }) :
      containerAppName = pulumi.Input.asInput<String>(containerAppName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceControlName = pulumi.Input.asInput<String>(sourceControlName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'resourceGroupName': resourceGroupName,
      'sourceControlName': sourceControlName,
    };
  }

  factory GetContainerAppsSourceControlArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerAppsSourceControlArgs(
      containerAppName: pulumi.Output.create<String>(map['containerAppName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceControlName: pulumi.Output.create<String>(map['sourceControlName'] as String),
    );
  }
}

