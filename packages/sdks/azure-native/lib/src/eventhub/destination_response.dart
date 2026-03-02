// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capture_identity_response.dart';

/// Capture storage details for capture description
class DestinationResponse {
  /// Blob naming convention for archive, e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order
  final pulumi.Input<String>? archiveNameFormat;
  /// Blob container Name
  final pulumi.Input<String>? blobContainer;
  /// The Azure Data Lake Store name for the captured events
  final pulumi.Input<String>? dataLakeAccountName;
  /// The destination folder path for the captured events
  final pulumi.Input<String>? dataLakeFolderPath;
  /// Subscription Id of Azure Data Lake Store
  final pulumi.Input<String>? dataLakeSubscriptionId;
  /// A value that indicates whether capture description is enabled.
  final pulumi.Input<CaptureIdentityResponse>? identity;
  /// Name for capture destination
  final pulumi.Input<String>? name;
  /// Resource id of the storage account to be used to create the blobs
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [DestinationResponse].
  /// [archiveNameFormat] Blob naming convention for archive, e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order
  /// [blobContainer] Blob container Name
  /// [dataLakeAccountName] The Azure Data Lake Store name for the captured events
  /// [dataLakeFolderPath] The destination folder path for the captured events
  /// [dataLakeSubscriptionId] Subscription Id of Azure Data Lake Store
  /// [identity] A value that indicates whether capture description is enabled.
  /// [name] Name for capture destination
  /// [storageAccountResourceId] Resource id of the storage account to be used to create the blobs
  DestinationResponse({
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
      'identity': ?pulumi.Input.mapOptionalInputValue<CaptureIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': ?name,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory DestinationResponse.fromMap(Map<String, dynamic> map) {
    return DestinationResponse(
      archiveNameFormat: map['archiveNameFormat'] == null ? null : (map['archiveNameFormat'] as String).input(),
      blobContainer: map['blobContainer'] == null ? null : (map['blobContainer'] as String).input(),
      dataLakeAccountName: map['dataLakeAccountName'] == null ? null : (map['dataLakeAccountName'] as String).input(),
      dataLakeFolderPath: map['dataLakeFolderPath'] == null ? null : (map['dataLakeFolderPath'] as String).input(),
      dataLakeSubscriptionId: map['dataLakeSubscriptionId'] == null ? null : (map['dataLakeSubscriptionId'] as String).input(),
      identity: map['identity'] == null ? null : (CaptureIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : (map['storageAccountResourceId'] as String).input(),
    );
  }
}

