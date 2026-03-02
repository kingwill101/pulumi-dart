// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_physical_table_map_custom_sql.dart';
import 'data_set_physical_table_map_relational_table.dart';
import 'data_set_physical_table_map_s3_source.dart';

class DataSetPhysicalTableMap {
  /// A physical table type built from the results of the custom SQL query. See custom_sql.
  final pulumi.Input<DataSetPhysicalTableMapCustomSql>? customSql;
  /// Key of the physical table map.
  final pulumi.Input<String> physicalTableMapId;
  /// A physical table type for relational data sources. See relational_table.
  final pulumi.Input<DataSetPhysicalTableMapRelationalTable>? relationalTable;
  /// A physical table type for as S3 data source. See s3_source.
  final pulumi.Input<DataSetPhysicalTableMapS3Source>? s3Source;

  /// Creates a new [DataSetPhysicalTableMap].
  /// [customSql] A physical table type built from the results of the custom SQL query. See custom_sql.
  /// [physicalTableMapId] Key of the physical table map.
  /// [relationalTable] A physical table type for relational data sources. See relational_table.
  /// [s3Source] A physical table type for as S3 data source. See s3_source.
  DataSetPhysicalTableMap({
    this.customSql,
    required this.physicalTableMapId,
    this.relationalTable,
    this.s3Source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSql': ?pulumi.Input.mapOptionalInputValue<DataSetPhysicalTableMapCustomSql, Map<String, dynamic>>(customSql, (value) => value.toMap()),
      'physicalTableMapId': physicalTableMapId,
      'relationalTable': ?pulumi.Input.mapOptionalInputValue<DataSetPhysicalTableMapRelationalTable, Map<String, dynamic>>(relationalTable, (value) => value.toMap()),
      's3Source': ?pulumi.Input.mapOptionalInputValue<DataSetPhysicalTableMapS3Source, Map<String, dynamic>>(s3Source, (value) => value.toMap()),
    };
  }

  factory DataSetPhysicalTableMap.fromMap(Map<String, dynamic> map) {
    return DataSetPhysicalTableMap(
      customSql: map['customSql'] == null ? null : ((DataSetPhysicalTableMapCustomSql.fromMap((map['customSql']! as Map).cast<String, dynamic>())).input()).input(),
      physicalTableMapId: (map['physicalTableMapId'] as String).input(),
      relationalTable: map['relationalTable'] == null ? null : ((DataSetPhysicalTableMapRelationalTable.fromMap((map['relationalTable']! as Map).cast<String, dynamic>())).input()).input(),
      s3Source: map['s3Source'] == null ? null : ((DataSetPhysicalTableMapS3Source.fromMap((map['s3Source']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

