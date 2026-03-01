// ignore_for_file: unused_element, unnecessary_cast


/// The properties of RWX StorageClass
class RwxStorageClassTypeProperties {
  /// The backing storageclass used to create new storageclass
  final String backingStorageClassName;
  /// Type of a storage class
  /// Expected value is 'RWX'.
  final String type;

  /// Creates a new [RwxStorageClassTypeProperties].
  /// [backingStorageClassName] The backing storageclass used to create new storageclass
  /// [type] Type of a storage class
  RwxStorageClassTypeProperties({
    required this.backingStorageClassName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backingStorageClassName': backingStorageClassName,
      'type': type,
    };
  }

  factory RwxStorageClassTypeProperties.fromMap(Map<String, dynamic> map) {
    return RwxStorageClassTypeProperties(
      backingStorageClassName: map['backingStorageClassName'] as String,
      type: map['type'] as String,
    );
  }
}

