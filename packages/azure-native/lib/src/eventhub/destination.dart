// ignore_for_file: unused_element, unnecessary_cast

import 'capture_identity.dart';

/// Capture storage details for capture description
class Destination {
  /// Blob naming convention for archive, e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order
  final String? archiveNameFormat;
  /// Blob container Name
  final String? blobContainer;
  /// The Azure Data Lake Store name for the captured events
  final String? dataLakeAccountName;
  /// The destination folder path for the captured events
  final String? dataLakeFolderPath;
  /// Subscription Id of Azure Data Lake Store
  final String? dataLakeSubscriptionId;
  /// A value that indicates whether capture description is enabled.
  final CaptureIdentity? identity;
  /// Name for capture destination
  final String? name;
  /// Resource id of the storage account to be used to create the blobs
  final String? storageAccountResourceId;

  /// Creates a new [Destination].
  /// [archiveNameFormat] Blob naming convention for archive, e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order
  /// [blobContainer] Blob container Name
  /// [dataLakeAccountName] The Azure Data Lake Store name for the captured events
  /// [dataLakeFolderPath] The destination folder path for the captured events
  /// [dataLakeSubscriptionId] Subscription Id of Azure Data Lake Store
  /// [identity] A value that indicates whether capture description is enabled.
  /// [name] Name for capture destination
  /// [storageAccountResourceId] Resource id of the storage account to be used to create the blobs
  Destination({
    this.archiveNameFormat,
    this.blobContainer,
    this.dataLakeAccountName,
    this.dataLakeFolderPath,
    this.dataLakeSubscriptionId,
    this.identity,
    this.name,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveNameFormat': ?archiveNameFormat,
      'blobContainer': ?blobContainer,
      'dataLakeAccountName': ?dataLakeAccountName,
      'dataLakeFolderPath': ?dataLakeFolderPath,
      'dataLakeSubscriptionId': ?dataLakeSubscriptionId,
      'identity': ?identity == null ? null : identity!.toMap(),
      'name': ?name,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory Destination.fromMap(Map<String, dynamic> map) {
    return Destination(
      archiveNameFormat: map['archiveNameFormat'] == null ? null : map['archiveNameFormat'] as String,
      blobContainer: map['blobContainer'] == null ? null : map['blobContainer'] as String,
      dataLakeAccountName: map['dataLakeAccountName'] == null ? null : map['dataLakeAccountName'] as String,
      dataLakeFolderPath: map['dataLakeFolderPath'] == null ? null : map['dataLakeFolderPath'] as String,
      dataLakeSubscriptionId: map['dataLakeSubscriptionId'] == null ? null : map['dataLakeSubscriptionId'] as String,
      identity: map['identity'] == null ? null : CaptureIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : map['storageAccountResourceId'] as String,
    );
  }
}

