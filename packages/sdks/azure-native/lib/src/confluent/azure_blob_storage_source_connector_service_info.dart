// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The connector service type is AzureBlobStorageSourceConnector
class AzureBlobStorageSourceConnectorServiceInfo {
  /// The connector service type.
  /// Expected value is 'AzureBlobStorageSourceConnector'.
  final pulumi.Input<String> connectorServiceType;
  /// Azure Blob Storage Account Key
  final pulumi.Input<String>? storageAccountKey;
  /// Azure Blob Storage Account Name
  final pulumi.Input<String>? storageAccountName;
  /// Azure Blob Storage Account Container Name
  final pulumi.Input<String>? storageContainerName;

  /// Creates a new [AzureBlobStorageSourceConnectorServiceInfo].
  /// [connectorServiceType] The connector service type.
  /// [storageAccountKey] Azure Blob Storage Account Key
  /// [storageAccountName] Azure Blob Storage Account Name
  /// [storageContainerName] Azure Blob Storage Account Container Name
  AzureBlobStorageSourceConnectorServiceInfo({
    required this.connectorServiceType,
    this.storageAccountKey,
    this.storageAccountName,
    this.storageContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorServiceType': connectorServiceType,
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': ?storageAccountName,
      'storageContainerName': ?storageContainerName,
    };
  }

  factory AzureBlobStorageSourceConnectorServiceInfo.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageSourceConnectorServiceInfo(
      connectorServiceType: (map['connectorServiceType'] as String).input(),
      storageAccountKey: map['storageAccountKey'] == null ? null : (map['storageAccountKey'] as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName'] as String).input(),
      storageContainerName: map['storageContainerName'] == null ? null : (map['storageContainerName'] as String).input(),
    );
  }
}

