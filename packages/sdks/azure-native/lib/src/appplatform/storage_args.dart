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
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      storageName: (() { final guardedValue = map['storageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

