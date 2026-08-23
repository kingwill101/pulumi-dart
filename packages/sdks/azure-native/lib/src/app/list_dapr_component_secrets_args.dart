// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_list_dapr_component_secrets_args_doc}
/// Arguments for listDaprComponentSecrets.
/// {@endtemplate}
/// {@macro pulumi_app_list_dapr_component_secrets_args_doc}
class ListDaprComponentSecretsArgs {
  /// Name of the Dapr Component.
  final pulumi.Input<String> componentName;
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListDaprComponentSecretsArgs].
  /// [componentName] Name of the Dapr Component.
  /// [environmentName] Name of the Managed Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListDaprComponentSecretsArgs({
    required this.componentName,
    required this.environmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'environmentName': environmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListDaprComponentSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListDaprComponentSecretsArgs(
      componentName: pulumi.Input.fromValue(map['componentName'] as String),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
