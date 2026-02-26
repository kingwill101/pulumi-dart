// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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

  GoogleCloudDataplexV1SchemaSchemaField({
    this.description,
    this.fields,
    required this.mode,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = Input.encodeList<GoogleCloudDataplexV1SchemaSchemaField,
          Map<String, dynamic>>(fieldsValue, (value) => value.toMap());
    }
    map['mode'] = mode.value;
    map['name'] = name;
    map['type'] = type.value;
    return map;
  }

  factory GoogleCloudDataplexV1SchemaSchemaField.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1SchemaSchemaField(
      description:
          map['description'] == null ? null : map['description'] as String,
      fields: map['fields'] == null
          ? null
          : Input.decodeList<GoogleCloudDataplexV1SchemaSchemaField>(
              map['fields'],
              (value) => GoogleCloudDataplexV1SchemaSchemaField.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mode: GoogleCloudDataplexV1SchemaSchemaFieldMode.fromValue(
          map['mode'] as String),
      name: map['name'] as String,
      type: GoogleCloudDataplexV1SchemaSchemaFieldType.fromValue(
          map['type'] as String),
    );
  }
}
