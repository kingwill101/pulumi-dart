// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of a column within a schema. Columns could be nested inside other columns.
class GoogleCloudDatacatalogV1beta1ColumnSchema {
  /// Name of the column.
  final String column;

  /// Optional. Description of the column. Default value is an empty string.
  final String? description;

  /// Optional. A column's mode indicates whether the values in this column are required, nullable, etc. Only `NULLABLE`, `REQUIRED` and `REPEATED` are supported. Default mode is `NULLABLE`.
  final String? mode;

  /// Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  final List<GoogleCloudDatacatalogV1beta1ColumnSchema>? subcolumns;

  /// Type of the column.
  final String type;

  GoogleCloudDatacatalogV1beta1ColumnSchema({
    required this.column,
    this.description,
    this.mode,
    this.subcolumns,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final subcolumnsValue = subcolumns;
    if (subcolumnsValue != null) {
      map['subcolumns'] = pulumi.Input.encodeList<
          GoogleCloudDatacatalogV1beta1ColumnSchema,
          Map<String, dynamic>>(subcolumnsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDatacatalogV1beta1ColumnSchema.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1ColumnSchema(
      column: map['column'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      subcolumns: map['subcolumns'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDatacatalogV1beta1ColumnSchema>(
              map['subcolumns'],
              (value) => GoogleCloudDatacatalogV1beta1ColumnSchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
