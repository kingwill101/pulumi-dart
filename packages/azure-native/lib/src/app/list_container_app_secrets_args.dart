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
  ListContainerAppSecretsArgs({
    required String containerAppName,
    required String resourceGroupName,
  }) :
      containerAppName = pulumi.Input.asInput<String>(containerAppName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListContainerAppSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListContainerAppSecretsArgs(
      containerAppName: map['containerAppName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

