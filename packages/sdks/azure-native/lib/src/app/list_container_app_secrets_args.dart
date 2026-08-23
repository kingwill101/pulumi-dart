// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_list_container_app_secrets_args_doc}
/// Arguments for listContainerAppSecrets.
/// {@endtemplate}
/// {@macro pulumi_app_list_container_app_secrets_args_doc}
class ListContainerAppSecretsArgs {
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListContainerAppSecretsArgs].
  /// [containerAppName] Name of the Container App.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListContainerAppSecretsArgs({
    required this.containerAppName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListContainerAppSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListContainerAppSecretsArgs(
      containerAppName: pulumi.Input.fromValue(map['containerAppName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
