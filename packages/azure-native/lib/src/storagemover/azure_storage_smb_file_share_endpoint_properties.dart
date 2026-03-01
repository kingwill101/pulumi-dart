// ignore_for_file: unused_element, unnecessary_cast


/// The properties of Azure Storage SMB file share endpoint.
class AzureStorageSmbFileShareEndpointProperties {
  /// A description for the Endpoint.
  final String? description;
  /// The Endpoint resource type.
  /// Expected value is 'AzureStorageSmbFileShare'.
  final String endpointType;
  /// The name of the Azure Storage file share.
  final String fileShareName;
  /// The Azure Resource ID of the storage account.
  final String storageAccountResourceId;

  /// Creates a new [AzureStorageSmbFileShareEndpointProperties].
  /// [description] A description for the Endpoint.
  /// [endpointType] The Endpoint resource type.
  /// [fileShareName] The name of the Azure Storage file share.
  /// [storageAccountResourceId] The Azure Resource ID of the storage account.
  AzureStorageSmbFileShareEndpointProperties({
    this.description,
    required this.endpointType,
    required this.fileShareName,
    required this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpointType': endpointType,
      'fileShareName': fileShareName,
      'storageAccountResourceId': storageAccountResourceId,
    };
  }

  factory AzureStorageSmbFileShareEndpointProperties.fromMap(Map<String, dynamic> map) {
    return AzureStorageSmbFileShareEndpointProperties(
      description: map['description'] == null ? null : map['description'] as String,
      endpointType: map['endpointType'] as String,
      fileShareName: map['fileShareName'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] as String,
    );
  }
}

