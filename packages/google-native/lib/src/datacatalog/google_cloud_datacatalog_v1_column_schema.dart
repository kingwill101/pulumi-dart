// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_column_schema_highest_indexing_type.dart';
import 'google_cloud_datacatalog_v1_column_schema_looker_column_spec.dart';

/// A column within a schema. Columns can be nested inside other columns.
class GoogleCloudDatacatalogV1ColumnSchema {
  /// Name of the column. Must be a UTF-8 string without dots (.). The maximum size is 64 bytes.
  final String column;

  /// Optional. Default value for the column.
  final String? defaultValue;

  /// Optional. Description of the column. Default value is an empty string. The description must be a UTF-8 string with the maximum size of 2000 bytes.
  final String? description;

  /// Optional. Garbage collection policy for the column or column family. Applies to systems like Cloud Bigtable.
  final String? gcRule;

  /// Optional. Most important inclusion of this column.
  final GoogleCloudDatacatalogV1ColumnSchemaHighestIndexingType?
      highestIndexingType;

  /// Looker specific column info of this column.
  final GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec? lookerColumnSpec;

  /// Optional. A column's mode indicates whether values in this column are required, nullable, or repeated. Only `NULLABLE`, `REQUIRED`, and `REPEATED` values are supported. Default mode is `NULLABLE`.
  final String? mode;

  /// Optional. Ordinal position
  final int? ordinalPosition;

  /// Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  final List<GoogleCloudDatacatalogV1ColumnSchema>? subcolumns;

  /// Type of the column. Must be a UTF-8 string with the maximum size of 128 bytes.
  final String type;

  /// Creates a new [GoogleCloudDatacatalogV1ColumnSchema].
  /// [column] Name of the column. Must be a UTF-8 string without dots (.). The maximum size is 64 bytes.
  /// [defaultValue] Optional. Default value for the column.
  /// [description] Optional. Description of the column. Default value is an empty string. The description must be a UTF-8 string with the maximum size of 2000 bytes.
  /// [gcRule] Optional. Garbage collection policy for the column or column family. Applies to systems like Cloud Bigtable.
  /// [highestIndexingType] Optional. Most important inclusion of this column.
  /// [lookerColumnSpec] Looker specific column info of this column.
  /// [mode] Optional. A column's mode indicates whether values in this column are required, nullable, or repeated. Only `NULLABLE`, `REQUIRED`, and `REPEATED` values are supported. Default mode is `NULLABLE`.
  /// [ordinalPosition] Optional. Ordinal position
  /// [subcolumns] Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  /// [type] Type of the column. Must be a UTF-8 string with the maximum size of 128 bytes.
  GoogleCloudDatacatalogV1ColumnSchema({
    required this.column,
    this.defaultValue,
    this.description,
    this.gcRule,
    this.highestIndexingType,
    this.lookerColumnSpec,
    this.mode,
    this.ordinalPosition,
    this.subcolumns,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final gcRuleValue = gcRule;
    if (gcRuleValue != null) {
      map['gcRule'] = gcRuleValue;
    }
    final highestIndexingTypeValue = highestIndexingType;
    if (highestIndexingTypeValue != null) {
      map['highestIndexingType'] = highestIndexingTypeValue.value;
    }
    final lookerColumnSpecValue = lookerColumnSpec;
    if (lookerColumnSpecValue != null) {
      map['lookerColumnSpec'] = lookerColumnSpecValue.toMap();
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final ordinalPositionValue = ordinalPosition;
    if (ordinalPositionValue != null) {
      map['ordinalPosition'] = ordinalPositionValue;
    }
    final subcolumnsValue = subcolumns;
    if (subcolumnsValue != null) {
      map['subcolumns'] = pulumi.Input.encodeList<
          GoogleCloudDatacatalogV1ColumnSchema,
          Map<String, dynamic>>(subcolumnsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDatacatalogV1ColumnSchema.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ColumnSchema(
      column: map['column'] as String,
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      gcRule: map['gcRule'] == null ? null : map['gcRule'] as String,
      highestIndexingType: map['highestIndexingType'] == null
          ? null
          : GoogleCloudDatacatalogV1ColumnSchemaHighestIndexingType.fromValue(
              map['highestIndexingType'] as String),
      lookerColumnSpec: map['lookerColumnSpec'] == null
          ? null
          : GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec.fromMap(
              (map['lookerColumnSpec'] as Map).cast<String, dynamic>()),
      mode: map['mode'] == null ? null : map['mode'] as String,
      ordinalPosition:
          map['ordinalPosition'] == null ? null : map['ordinalPosition'] as int,
      subcolumns: map['subcolumns'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDatacatalogV1ColumnSchema>(
              map['subcolumns'],
              (value) => GoogleCloudDatacatalogV1ColumnSchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
