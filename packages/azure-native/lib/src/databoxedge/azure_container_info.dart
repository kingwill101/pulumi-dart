// ignore_for_file: unused_element, unnecessary_cast


/// Azure container mapping of the endpoint.
class AzureContainerInfo {
  /// Container name (Based on the data format specified, this represents the name of Azure Files/Page blob/Block blob).
  final String containerName;
  /// Storage format used for the file represented by the share.
  final String dataFormat;
  /// ID of the storage account credential used to access storage.
  final String storageAccountCredentialId;

  /// Creates a new [AzureContainerInfo].
  /// [containerName] Container name (Based on the data format specified, this represents the name of Azure Files/Page blob/Block blob).
  /// [dataFormat] Storage format used for the file represented by the share.
  /// [storageAccountCredentialId] ID of the storage account credential used to access storage.
  AzureContainerInfo({
    required this.containerName,
    required this.dataFormat,
    required this.storageAccountCredentialId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'dataFormat': dataFormat,
      'storageAccountCredentialId': storageAccountCredentialId,
    };
  }

  factory AzureContainerInfo.fromMap(Map<String, dynamic> map) {
    return AzureContainerInfo(
      containerName: map['containerName'] as String,
      dataFormat: map['dataFormat'] as String,
      storageAccountCredentialId: map['storageAccountCredentialId'] as String,
    );
  }
}

