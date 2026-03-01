// ignore_for_file: unused_element, unnecessary_cast


/// Describes a storage account connection.
class StorageAccount {
  /// The Azure Resource Manager ID of the storage account resource.
  final String id;
  /// The storage account key.
  final String key;

  /// Creates a new [StorageAccount].
  /// [id] The Azure Resource Manager ID of the storage account resource.
  /// [key] The storage account key.
  StorageAccount({
    required this.id,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'key': key,
    };
  }

  factory StorageAccount.fromMap(Map<String, dynamic> map) {
    return StorageAccount(
      id: map['id'] as String,
      key: map['key'] as String,
    );
  }
}

