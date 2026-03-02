// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account.dart';

/// {@template pulumi_appplatform_storage_args_doc}
/// The set of arguments for Storage.
/// {@endtemplate}
/// {@macro pulumi_appplatform_storage_args_doc}
class StorageArgs {
  /// Properties of the storage resource payload.
  final pulumi.Input<StorageAccount>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;
  /// The name of the storage resource.
  final pulumi.Input<String>? storageName;

  /// Creates a new [StorageArgs].
  /// [properties] Properties of the storage resource payload.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [storageName] The name of the storage resource.
  StorageArgs({
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
    this.storageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<StorageAccount, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'storageName': ?storageName,
    };
  }

  factory StorageArgs.fromMap(Map<String, dynamic> map) {
    return StorageArgs(
      properties: map['properties'] == null ? null : (StorageAccount.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      storageName: map['storageName'] == null ? null : (map['storageName']! as String).input(),
    );
  }
}

