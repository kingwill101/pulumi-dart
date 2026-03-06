// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Native StorageClass
class NativeStorageClassTypePropertiesResponse {
  /// Type of a storage class
  /// Expected value is 'Native'.
  final pulumi.Input<String> type;

  /// Creates a new [NativeStorageClassTypePropertiesResponse].
  /// [type] Type of a storage class
  const NativeStorageClassTypePropertiesResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory NativeStorageClassTypePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NativeStorageClassTypePropertiesResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

