// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_list_registry_build_source_upload_url_args_doc}
/// Arguments for listRegistryBuildSourceUploadUrl.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_list_registry_build_source_upload_url_args_doc}
class ListRegistryBuildSourceUploadUrlArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListRegistryBuildSourceUploadUrlArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  ListRegistryBuildSourceUploadUrlArgs({
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListRegistryBuildSourceUploadUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListRegistryBuildSourceUploadUrlArgs(
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

