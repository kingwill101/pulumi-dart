// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model that represents the Customer Managed Storage for an Experiment.
class CustomerDataStoragePropertiesResponse {
  /// Name of the Azure Blob Storage container to use or create.
  final pulumi.Input<String>? blobContainerName;
  /// ARM Resource ID of the Storage account to use for Customer Data storage.
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [CustomerDataStoragePropertiesResponse].
  /// [blobContainerName] Name of the Azure Blob Storage container to use or create.
  /// [storageAccountResourceId] ARM Resource ID of the Storage account to use for Customer Data storage.
  CustomerDataStoragePropertiesResponse({
    this.blobContainerName,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerName': ?blobContainerName,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory CustomerDataStoragePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomerDataStoragePropertiesResponse(
      blobContainerName: map['blobContainerName'] == null ? null : (map['blobContainerName']! as String).input(),
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : (map['storageAccountResourceId']! as String).input(),
    );
  }
}

