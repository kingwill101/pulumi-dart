// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schema Reference Properties
class SchemaReferencePropertiesResponse {
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// Schema Id of schema reference
  final pulumi.Input<String> schemaId;

  /// Creates a new [SchemaReferencePropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  /// [schemaId] Schema Id of schema reference
  SchemaReferencePropertiesResponse({
    required this.provisioningState,
    required this.schemaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'schemaId': schemaId,
    };
  }

  factory SchemaReferencePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchemaReferencePropertiesResponse(
      provisioningState: (map['provisioningState'] as String).input(),
      schemaId: (map['schemaId'] as String).input(),
    );
  }
}

