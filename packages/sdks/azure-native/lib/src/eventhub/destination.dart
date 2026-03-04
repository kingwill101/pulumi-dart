// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capture_identity.dart';

/// Capture storage details for capture description
class Destination {
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
  final pulumi.Input<CaptureIdentity>? identity;

  /// Name for capture destination
  final pulumi.Input<String>? name;

  /// Resource id of the storage account to be used to create the blobs
  final pulumi.Input<String>? storageAccountResourceId;

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
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            CaptureIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'name': ?name,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory Destination.fromMap(Map<String, dynamic> map) {
    return Destination(
      archiveNameFormat: (() {
        final guardedValue = map['archiveNameFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      blobContainer: (() {
        final guardedValue = map['blobContainer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataLakeAccountName: (() {
        final guardedValue = map['dataLakeAccountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataLakeFolderPath: (() {
        final guardedValue = map['dataLakeFolderPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataLakeSubscriptionId: (() {
        final guardedValue = map['dataLakeSubscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CaptureIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountResourceId: (() {
        final guardedValue = map['storageAccountResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
