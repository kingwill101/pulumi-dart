// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaField {
  /// Documentation or description text that provides additional context about the purpose and usage of this field. Length between 0 and 255 characters.
  final pulumi.Input<String>? doc;
  /// Catalog ID, database name, and table name, separated by colons (`:`).
  /// * `partition_index[*].index_status` - Status of the partition index.
  final pulumi.Input<int> id;
  /// Default value as JSON used to populate the field's value for all records that were written before the field was added to the schema.
  final pulumi.Input<String>? initialDefault;
  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  /// Whether this field is required (non-nullable) or optional (nullable) in the table schema.
  final pulumi.Input<bool> required;
  final pulumi.Input<String> type;
  /// Default value as JSON used to populate the field's value for any records written after the field was added to the schema, if the writer does not supply the field's value.
  final pulumi.Input<String>? writeDefault;

  /// Creates a new [CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaField].
  /// [doc] Documentation or description text that provides additional context about the purpose and usage of this field. Length between 0 and 255 characters.
  /// [id] Catalog ID, database name, and table name, separated by colons (`:`).
  /// [initialDefault] Default value as JSON used to populate the field's value for all records that were written before the field was added to the schema.
  /// [name] Name of the table. For Hive compatibility, this must be entirely lowercase.
  /// [required] Whether this field is required (non-nullable) or optional (nullable) in the table schema.
  /// [type] Required.
  /// [writeDefault] Default value as JSON used to populate the field's value for any records written after the field was added to the schema, if the writer does not supply the field's value.
  const CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaField({
    this.doc,
    required this.id,
    this.initialDefault,
    required this.name,
    required this.required,
    required this.type,
    this.writeDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doc': ?doc,
      'id': id,
      'initialDefault': ?initialDefault,
      'name': name,
      'required': required,
      'type': type,
      'writeDefault': ?writeDefault,
    };
  }

  factory CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaField.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaField(
      doc: (() { final guardedValue = map['doc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as int),
      initialDefault: (() { final guardedValue = map['initialDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
      writeDefault: (() { final guardedValue = map['writeDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
