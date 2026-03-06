// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcontainerservice_get_storage_space_retrieve_args_doc}
/// Arguments for getStorageSpaceRetrieve.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_get_storage_space_retrieve_args_doc}
class GetStorageSpaceRetrieveArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameter for the name of the storage object
  final pulumi.Input<String> storageSpacesName;

  /// Creates a new [GetStorageSpaceRetrieveArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageSpacesName] Parameter for the name of the storage object
  const GetStorageSpaceRetrieveArgs({
    required this.resourceGroupName,
    required this.storageSpacesName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageSpacesName': storageSpacesName,
    };
  }

  factory GetStorageSpaceRetrieveArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageSpaceRetrieveArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageSpacesName: pulumi.Input.fromValue(map['storageSpacesName'] as String),
    );
  }
}

