// ignore_for_file: unused_element, unnecessary_cast


/// The properties of Blob StorageClass
class BlobStorageClassTypePropertiesResponse {
  /// Azure Storage Account Key
  final String azureStorageAccountKey;
  /// Azure Storage Account Name
  final String azureStorageAccountName;
  /// Type of a storage class
  /// Expected value is 'Blob'.
  final String type;

  /// Creates a new [BlobStorageClassTypePropertiesResponse].
  /// [azureStorageAccountKey] Azure Storage Account Key
  /// [azureStorageAccountName] Azure Storage Account Name
  /// [type] Type of a storage class
  BlobStorageClassTypePropertiesResponse({
    required this.azureStorageAccountKey,
    required this.azureStorageAccountName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureStorageAccountKey': azureStorageAccountKey,
      'azureStorageAccountName': azureStorageAccountName,
      'type': type,
    };
  }

  factory BlobStorageClassTypePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BlobStorageClassTypePropertiesResponse(
      azureStorageAccountKey: map['azureStorageAccountKey'] as String,
      azureStorageAccountName: map['azureStorageAccountName'] as String,
      type: map['type'] as String,
    );
  }
}

