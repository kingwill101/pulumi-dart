// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schema Reference Properties
class SchemaReferenceProperties {
  /// Schema Id of schema reference
  final pulumi.Input<String> schemaId;

  /// Creates a new [SchemaReferenceProperties].
  /// [schemaId] Schema Id of schema reference
  const SchemaReferenceProperties({
    required this.schemaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaId': schemaId,
    };
  }

  factory SchemaReferenceProperties.fromMap(Map<String, dynamic> map) {
    return SchemaReferenceProperties(
      schemaId: pulumi.Input.fromValue(map['schemaId'] as String),
    );
  }
}

