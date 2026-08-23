// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SchemaDefinition {
  /// A JSON string representation of the schema.
  final pulumi.Input<String> value;

  /// Creates a new [SchemaDefinition].
  /// [value] A JSON string representation of the schema.
  const SchemaDefinition({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory SchemaDefinition.fromMap(Map<String, dynamic> map) {
    return SchemaDefinition(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
