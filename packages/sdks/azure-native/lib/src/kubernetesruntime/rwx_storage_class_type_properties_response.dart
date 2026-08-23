// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of RWX StorageClass
class RwxStorageClassTypePropertiesResponse {
  /// The backing storageclass used to create new storageclass
  final pulumi.Input<String> backingStorageClassName;
  /// Type of a storage class
  /// Expected value is 'RWX'.
  final pulumi.Input<String> type;

  /// Creates a new [RwxStorageClassTypePropertiesResponse].
  /// [backingStorageClassName] The backing storageclass used to create new storageclass
  /// [type] Type of a storage class
  const RwxStorageClassTypePropertiesResponse({
    required this.backingStorageClassName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backingStorageClassName': backingStorageClassName,
      'type': type,
    };
  }

  factory RwxStorageClassTypePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RwxStorageClassTypePropertiesResponse(
      backingStorageClassName: pulumi.Input.fromValue(map['backingStorageClassName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
