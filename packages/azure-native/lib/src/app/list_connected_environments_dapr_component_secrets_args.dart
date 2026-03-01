// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_list_connected_environments_dapr_component_secrets_args_doc}
/// Arguments for listConnectedEnvironmentsDaprComponentSecrets.
/// {@endtemplate}
/// {@macro pulumi_app_list_connected_environments_dapr_component_secrets_args_doc}
class ListConnectedEnvironmentsDaprComponentSecretsArgs {
  /// Name of the Dapr Component.
  final pulumi.Input<String> componentName;
  /// Name of the connected environment.
  final pulumi.Input<String> connectedEnvironmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListConnectedEnvironmentsDaprComponentSecretsArgs].
  /// [componentName] Name of the Dapr Component.
  /// [connectedEnvironmentName] Name of the connected environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListConnectedEnvironmentsDaprComponentSecretsArgs({
    required String componentName,
    required String connectedEnvironmentName,
    required String resourceGroupName,
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

  factory ListConnectedEnvironmentsDaprComponentSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListConnectedEnvironmentsDaprComponentSecretsArgs(
      componentName: map['componentName'] as String,
      connectedEnvironmentName: map['connectedEnvironmentName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

