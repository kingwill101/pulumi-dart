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
    required this.containerAppName,
    required this.resourceGroupName,
    required this.sourceControlName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'resourceGroupName': resourceGroupName,
      'sourceControlName': sourceControlName,
    };
  }

  factory GetContainerAppsSourceControlArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerAppsSourceControlArgs(
      containerAppName: (map['containerAppName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceControlName: (map['sourceControlName'] as String).input(),
    );
  }
}

