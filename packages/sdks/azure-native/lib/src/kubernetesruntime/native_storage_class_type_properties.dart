// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Native StorageClass
class NativeStorageClassTypeProperties {
  /// Type of a storage class
  /// Expected value is 'Native'.
  final pulumi.Input<String> type;

  /// Creates a new [NativeStorageClassTypeProperties].
  /// [type] Type of a storage class
  const NativeStorageClassTypeProperties({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory NativeStorageClassTypeProperties.fromMap(Map<String, dynamic> map) {
    return NativeStorageClassTypeProperties(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

