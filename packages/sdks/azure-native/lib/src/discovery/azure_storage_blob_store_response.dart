// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure storage blob properties.
class AzureStorageBlobStoreResponse {
  /// The kind of the backing storage store.
  /// Expected value is 'AzureStorageBlob'.
  final pulumi.Input<String> kind;
  /// The associated Azure Storage Account ID.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [AzureStorageBlobStoreResponse].
  /// [kind] The kind of the backing storage store.
  /// [storageAccountId] The associated Azure Storage Account ID.
  const AzureStorageBlobStoreResponse({
    required this.kind,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'storageAccountId': storageAccountId,
    };
  }

  factory AzureStorageBlobStoreResponse.fromMap(Map<String, dynamic> map) {
    return AzureStorageBlobStoreResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}
