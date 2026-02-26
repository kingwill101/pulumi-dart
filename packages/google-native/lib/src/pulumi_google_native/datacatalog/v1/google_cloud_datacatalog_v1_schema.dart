// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_datacatalog_v1_column_schema.dart';

/// Represents a schema, for example, a BigQuery, GoogleSQL, or Avro schema.
class GoogleCloudDatacatalogV1Schema {
  /// The unified GoogleSQL-like schema of columns. The overall maximum number of columns and nested columns is 10,000. The maximum nested depth is 15 levels.
  final List<GoogleCloudDatacatalogV1ColumnSchema>? columns;

  GoogleCloudDatacatalogV1Schema({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = Input.encodeList<GoogleCloudDatacatalogV1ColumnSchema,
          Map<String, dynamic>>(columnsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1Schema.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1Schema(
      columns: map['columns'] == null
          ? null
          : Input.decodeList<GoogleCloudDatacatalogV1ColumnSchema>(
              map['columns'],
              (value) => GoogleCloudDatacatalogV1ColumnSchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
