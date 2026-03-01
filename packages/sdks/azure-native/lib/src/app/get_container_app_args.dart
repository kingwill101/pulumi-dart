// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_container_app_args_doc}
/// Arguments for getContainerApp.
/// {@endtemplate}
/// {@macro pulumi_app_get_container_app_args_doc}
class GetContainerAppArgs {
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetContainerAppArgs].
  /// [containerAppName] Name of the Container App.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetContainerAppArgs({
    required pulumi.Output<String> containerAppName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      containerAppName = pulumi.Input.asInput<String>(containerAppName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetContainerAppArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerAppArgs(
      containerAppName: pulumi.Output.create<String>(map['containerAppName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

