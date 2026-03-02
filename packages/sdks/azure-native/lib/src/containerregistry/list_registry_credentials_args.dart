// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_list_registry_credentials_args_doc}
/// Arguments for listRegistryCredentials.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_list_registry_credentials_args_doc}
class ListRegistryCredentialsArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListRegistryCredentialsArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListRegistryCredentialsArgs({
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListRegistryCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListRegistryCredentialsArgs(
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

