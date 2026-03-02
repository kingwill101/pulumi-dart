// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Blob StorageClass
class BlobStorageClassTypeProperties {
  /// Azure Storage Account Key
  final pulumi.Input<String> azureStorageAccountKey;
  /// Azure Storage Account Name
  final pulumi.Input<String> azureStorageAccountName;
  /// Type of a storage class
  /// Expected value is 'Blob'.
  final pulumi.Input<String> type;

  /// Creates a new [BlobStorageClassTypeProperties].
  /// [azureStorageAccountKey] Azure Storage Account Key
  /// [azureStorageAccountName] Azure Storage Account Name
  /// [type] Type of a storage class
  BlobStorageClassTypeProperties({
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

  factory BlobStorageClassTypeProperties.fromMap(Map<String, dynamic> map) {
    return BlobStorageClassTypeProperties(
      azureStorageAccountKey: (map['azureStorageAccountKey'] as String).input(),
      azureStorageAccountName: (map['azureStorageAccountName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

