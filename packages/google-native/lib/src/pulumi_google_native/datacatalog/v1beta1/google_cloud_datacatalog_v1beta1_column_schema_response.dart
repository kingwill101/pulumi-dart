// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Representation of a column within a schema. Columns could be nested inside other columns.
class GoogleCloudDatacatalogV1beta1ColumnSchemaResponse {
  /// Name of the column.
  final String column;

  /// Optional. Description of the column. Default value is an empty string.
  final String description;

  /// Optional. A column's mode indicates whether the values in this column are required, nullable, etc. Only `NULLABLE`, `REQUIRED` and `REPEATED` are supported. Default mode is `NULLABLE`.
  final String mode;

  /// Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  final List<GoogleCloudDatacatalogV1beta1ColumnSchemaResponse> subcolumns;

  /// Type of the column.
  final String type;

  GoogleCloudDatacatalogV1beta1ColumnSchemaResponse({
    required this.column,
    required this.description,
    required this.mode,
    required this.subcolumns,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    map['description'] = description;
    map['mode'] = mode;
    map['subcolumns'] = Input.encodeList<
        GoogleCloudDatacatalogV1beta1ColumnSchemaResponse,
        Map<String, dynamic>>(subcolumns, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDatacatalogV1beta1ColumnSchemaResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1ColumnSchemaResponse(
      column: map['column'] as String,
      description: map['description'] as String,
      mode: map['mode'] as String,
      subcolumns:
          Input.decodeList<GoogleCloudDatacatalogV1beta1ColumnSchemaResponse>(
              map['subcolumns'],
              (value) =>
                  GoogleCloudDatacatalogV1beta1ColumnSchemaResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
