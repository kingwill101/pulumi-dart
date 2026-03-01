// ignore_for_file: unused_element, unnecessary_cast


/// The properties of Native StorageClass
class NativeStorageClassTypePropertiesResponse {
  /// Type of a storage class
  /// Expected value is 'Native'.
  final String type;

  /// Creates a new [NativeStorageClassTypePropertiesResponse].
  /// [type] Type of a storage class
  NativeStorageClassTypePropertiesResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory NativeStorageClassTypePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NativeStorageClassTypePropertiesResponse(
      type: map['type'] as String,
    );
  }
}

