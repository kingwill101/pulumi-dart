// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model that represents the Customer Managed Storage for an Experiment.
class CustomerDataStorageProperties {
  /// Name of the Azure Blob Storage container to use or create.
  final pulumi.Input<String>? blobContainerName;
  /// ARM Resource ID of the Storage account to use for Customer Data storage.
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [CustomerDataStorageProperties].
  /// [blobContainerName] Name of the Azure Blob Storage container to use or create.
  /// [storageAccountResourceId] ARM Resource ID of the Storage account to use for Customer Data storage.
  CustomerDataStorageProperties({
    this.blobContainerName,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerName': ?blobContainerName,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory CustomerDataStorageProperties.fromMap(Map<String, dynamic> map) {
    return CustomerDataStorageProperties(
      blobContainerName: (() { final guardedValue = map['blobContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountResourceId: (() { final guardedValue = map['storageAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

