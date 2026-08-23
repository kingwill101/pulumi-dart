// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when auth_type is azureBlobStorageSinkConnector
class AzureBlobStorageSinkConnectorServiceInfoResponse {
  /// The connector service type.
  /// Expected value is 'AzureBlobStorageSinkConnector'.
  final pulumi.Input<String> connectorServiceType;
  /// Azure Blob Storage Account Key
  final pulumi.Input<String>? storageAccountKey;
  /// Azure Blob Storage Account Name
  final pulumi.Input<String>? storageAccountName;
  /// Azure Blob Storage Account Container Name
  final pulumi.Input<String>? storageContainerName;

  /// Creates a new [AzureBlobStorageSinkConnectorServiceInfoResponse].
  /// [connectorServiceType] The connector service type.
  /// [storageAccountKey] Azure Blob Storage Account Key
  /// [storageAccountName] Azure Blob Storage Account Name
  /// [storageContainerName] Azure Blob Storage Account Container Name
  const AzureBlobStorageSinkConnectorServiceInfoResponse({
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

  factory AzureBlobStorageSinkConnectorServiceInfoResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageSinkConnectorServiceInfoResponse(
      connectorServiceType: pulumi.Input.fromValue(map['connectorServiceType'] as String),
      storageAccountKey: (() { final guardedValue = map['storageAccountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerName: (() { final guardedValue = map['storageContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
