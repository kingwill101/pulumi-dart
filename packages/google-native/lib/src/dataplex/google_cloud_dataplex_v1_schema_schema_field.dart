// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_schema_schema_field_mode.dart';
import 'google_cloud_dataplex_v1_schema_schema_field_type.dart';

/// Represents a column field within a table schema.
class GoogleCloudDataplexV1SchemaSchemaField {
  /// Optional. User friendly field description. Must be less than or equal to 1024 characters.
  final String? description;
  /// Optional. Any nested field for complex types.
  final List<GoogleCloudDataplexV1SchemaSchemaField>? fields;
  /// Additional field semantics.
  final GoogleCloudDataplexV1SchemaSchemaFieldMode mode;
  /// The name of the field. Must contain only letters, numbers and underscores, with a maximum length of 767 characters, and must begin with a letter or underscore.
  final String name;
  /// The type of field.
  final GoogleCloudDataplexV1SchemaSchemaFieldType type;

  /// Creates a new [GoogleCloudDataplexV1SchemaSchemaField].
  /// [description] Optional. User friendly field description. Must be less than or equal to 1024 characters.
  /// [fields] Optional. Any nested field for complex types.
  /// [mode] Additional field semantics.
  /// [name] The name of the field. Must contain only letters, numbers and underscores, with a maximum length of 767 characters, and must begin with a letter or underscore.
  /// [type] The type of field.
  GoogleCloudDataplexV1SchemaSchemaField({
    this.description,
    this.fields,
    required this.mode,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fields': ?fields == null ? null : pulumi.Input.encodeList<GoogleCloudDataplexV1SchemaSchemaField, Map<String, dynamic>>(fields!, (value) => value.toMap()),
      'mode': mode.value,
      'name': name,
      'type': type.value,
    };
  }

  factory GoogleCloudDataplexV1SchemaSchemaField.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1SchemaSchemaField(
      description: map['description'] == null ? null : map['description'] as String,
      fields: map['fields'] == null ? null : pulumi.Input.decodeList<GoogleCloudDataplexV1SchemaSchemaField>(map['fields'], (value) => GoogleCloudDataplexV1SchemaSchemaField.fromMap((value as Map).cast<String, dynamic>())),
      mode: GoogleCloudDataplexV1SchemaSchemaFieldMode.fromValue(map['mode'] as String),
      name: map['name'] as String,
      type: GoogleCloudDataplexV1SchemaSchemaFieldType.fromValue(map['type'] as String),
    );
  }
}

