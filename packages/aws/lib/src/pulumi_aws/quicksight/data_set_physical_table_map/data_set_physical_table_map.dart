// ignore_for_file: unused_element, unnecessary_cast

import '../data_set_physical_table_map_custom_sql/data_set_physical_table_map_custom_sql.dart';
import '../data_set_physical_table_map_relational_table/data_set_physical_table_map_relational_table.dart';
import '../data_set_physical_table_map_s3_source/data_set_physical_table_map_s3_source.dart';

class DataSetPhysicalTableMap {
  /// A physical table type built from the results of the custom SQL query. See custom_sql.
  final DataSetPhysicalTableMapCustomSql? customSql;

  /// Key of the physical table map.
  final String physicalTableMapId;

  /// A physical table type for relational data sources. See relational_table.
  final DataSetPhysicalTableMapRelationalTable? relationalTable;

  /// A physical table type for as S3 data source. See s3_source.
  final DataSetPhysicalTableMapS3Source? s3Source;

  DataSetPhysicalTableMap({
    this.customSql,
    required this.physicalTableMapId,
    this.relationalTable,
    this.s3Source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customSqlValue = customSql;
    if (customSqlValue != null) {
      map['customSql'] = customSqlValue.toMap();
    }
    map['physicalTableMapId'] = physicalTableMapId;
    final relationalTableValue = relationalTable;
    if (relationalTableValue != null) {
      map['relationalTable'] = relationalTableValue.toMap();
    }
    final s3SourceValue = s3Source;
    if (s3SourceValue != null) {
      map['s3Source'] = s3SourceValue.toMap();
    }
    return map;
  }

  factory DataSetPhysicalTableMap.fromMap(Map<String, dynamic> map) {
    return DataSetPhysicalTableMap(
      customSql: map['customSql'] == null
          ? null
          : DataSetPhysicalTableMapCustomSql.fromMap(
              (map['customSql'] as Map).cast<String, dynamic>()),
      physicalTableMapId: map['physicalTableMapId'] as String,
      relationalTable: map['relationalTable'] == null
          ? null
          : DataSetPhysicalTableMapRelationalTable.fromMap(
              (map['relationalTable'] as Map).cast<String, dynamic>()),
      s3Source: map['s3Source'] == null
          ? null
          : DataSetPhysicalTableMapS3Source.fromMap(
              (map['s3Source'] as Map).cast<String, dynamic>()),
    );
  }
}
