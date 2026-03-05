// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference to the Schema Registry for this AIO Instance.
class SchemaRegistryRef {
  /// The resource ID of the Schema Registry.
  final pulumi.Input<String> resourceId;

  /// Creates a new [SchemaRegistryRef].
  /// [resourceId] The resource ID of the Schema Registry.
  SchemaRegistryRef({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory SchemaRegistryRef.fromMap(Map<String, dynamic> map) {
    return SchemaRegistryRef(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

