// ignore_for_file: unused_element, unnecessary_cast


/// The properties of Native StorageClass
class NativeStorageClassTypeProperties {
  /// Type of a storage class
  /// Expected value is 'Native'.
  final String type;

  /// Creates a new [NativeStorageClassTypeProperties].
  /// [type] Type of a storage class
  NativeStorageClassTypeProperties({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory NativeStorageClassTypeProperties.fromMap(Map<String, dynamic> map) {
    return NativeStorageClassTypeProperties(
      type: map['type'] as String,
    );
  }
}

