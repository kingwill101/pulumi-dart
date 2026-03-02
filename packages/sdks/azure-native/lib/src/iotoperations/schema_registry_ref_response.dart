// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference to the Schema Registry for this AIO Instance.
class SchemaRegistryRefResponse {
  /// The resource ID of the Schema Registry.
  final pulumi.Input<String> resourceId;

  /// Creates a new [SchemaRegistryRefResponse].
  /// [resourceId] The resource ID of the Schema Registry.
  SchemaRegistryRefResponse({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory SchemaRegistryRefResponse.fromMap(Map<String, dynamic> map) {
    return SchemaRegistryRefResponse(
      resourceId: (map['resourceId'] as String).input(),
    );
  }
}

