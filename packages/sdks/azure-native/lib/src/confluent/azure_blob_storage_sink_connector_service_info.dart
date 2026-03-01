// ignore_for_file: unused_element, unnecessary_cast


/// The authentication info when auth_type is azureBlobStorageSinkConnector
class AzureBlobStorageSinkConnectorServiceInfo {
  /// The connector service type.
  /// Expected value is 'AzureBlobStorageSinkConnector'.
  final String connectorServiceType;
  /// Azure Blob Storage Account Key
  final String? storageAccountKey;
  /// Azure Blob Storage Account Name
  final String? storageAccountName;
  /// Azure Blob Storage Account Container Name
  final String? storageContainerName;

  /// Creates a new [AzureBlobStorageSinkConnectorServiceInfo].
  /// [connectorServiceType] The connector service type.
  /// [storageAccountKey] Azure Blob Storage Account Key
  /// [storageAccountName] Azure Blob Storage Account Name
  /// [storageContainerName] Azure Blob Storage Account Container Name
  AzureBlobStorageSinkConnectorServiceInfo({
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

  factory AzureBlobStorageSinkConnectorServiceInfo.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageSinkConnectorServiceInfo(
      connectorServiceType: map['connectorServiceType'] as String,
      storageAccountKey: map['storageAccountKey'] == null ? null : map['storageAccountKey'] as String,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
      storageContainerName: map['storageContainerName'] == null ? null : map['storageContainerName'] as String,
    );
  }
}

