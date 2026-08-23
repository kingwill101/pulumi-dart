// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Blob StorageClass
class BlobStorageClassTypePropertiesResponse {
  /// Azure Storage Account Key
  final pulumi.Input<String> azureStorageAccountKey;
  /// Azure Storage Account Name
  final pulumi.Input<String> azureStorageAccountName;
  /// Type of a storage class
  /// Expected value is 'Blob'.
  final pulumi.Input<String> type;

  /// Creates a new [BlobStorageClassTypePropertiesResponse].
  /// [azureStorageAccountKey] Azure Storage Account Key
  /// [azureStorageAccountName] Azure Storage Account Name
  /// [type] Type of a storage class
  const BlobStorageClassTypePropertiesResponse({
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
      azureStorageAccountKey: pulumi.Input.fromValue(map['azureStorageAccountKey'] as String),
      azureStorageAccountName: pulumi.Input.fromValue(map['azureStorageAccountName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
