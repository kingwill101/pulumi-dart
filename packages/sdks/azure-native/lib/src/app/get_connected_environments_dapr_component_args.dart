// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_connected_environments_dapr_component_args_doc}
/// Arguments for getConnectedEnvironmentsDaprComponent.
/// {@endtemplate}
/// {@macro pulumi_app_get_connected_environments_dapr_component_args_doc}
class GetConnectedEnvironmentsDaprComponentArgs {
  /// Name of the Dapr Component.
  final pulumi.Input<String> componentName;
  /// Name of the connected environment.
  final pulumi.Input<String> connectedEnvironmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectedEnvironmentsDaprComponentArgs].
  /// [componentName] Name of the Dapr Component.
  /// [connectedEnvironmentName] Name of the connected environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConnectedEnvironmentsDaprComponentArgs({
    required pulumi.Output<String> componentName,
    required pulumi.Output<String> connectedEnvironmentName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      componentName = pulumi.Input.asInput<String>(componentName),
      connectedEnvironmentName = pulumi.Input.asInput<String>(connectedEnvironmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'connectedEnvironmentName': connectedEnvironmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectedEnvironmentsDaprComponentArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectedEnvironmentsDaprComponentArgs(
      componentName: pulumi.Output.create<String>(map['componentName'] as String),
      connectedEnvironmentName: pulumi.Output.create<String>(map['connectedEnvironmentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

