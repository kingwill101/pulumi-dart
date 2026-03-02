// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_storage_args_doc}
/// Arguments for getStorage.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_storage_args_doc}
class GetStorageArgs {
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;
  /// The name of the storage resource.
  final pulumi.Input<String> storageName;

  /// Creates a new [GetStorageArgs].
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [storageName] The name of the storage resource.
  GetStorageArgs({
    required this.resourceGroupName,
    required this.serviceName,
    required this.storageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'storageName': storageName,
    };
  }

  factory GetStorageArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      storageName: (map['storageName'] as String).input(),
    );
  }
}

