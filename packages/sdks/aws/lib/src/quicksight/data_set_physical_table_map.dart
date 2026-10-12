// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_physical_table_map_custom_sql.dart';
import 'data_set_physical_table_map_relational_table.dart';
import 'data_set_physical_table_map_s3_source.dart';

class DataSetPhysicalTableMap {
  /// Physical table type built from the results of the custom SQL query. See `customSql` Block below.
  final pulumi.Input<DataSetPhysicalTableMapCustomSql?>? customSql;
  /// Key of the physical table map.
  final pulumi.Input<String> physicalTableMapId;
  /// Physical table type for relational data sources. See `relationalTable` Block below.
  final pulumi.Input<DataSetPhysicalTableMapRelationalTable?>? relationalTable;
  /// Physical table type for an S3 data source. See `s3Source` Block below.
  final pulumi.Input<DataSetPhysicalTableMapS3Source?>? s3Source;

  /// Creates a new [DataSetPhysicalTableMap].
  /// [customSql] Physical table type built from the results of the custom SQL query. See `customSql` Block below.
  /// [physicalTableMapId] Key of the physical table map.
  /// [relationalTable] Physical table type for relational data sources. See `relationalTable` Block below.
  /// [s3Source] Physical table type for an S3 data source. See `s3Source` Block below.
  const DataSetPhysicalTableMap({
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
      customSql: (() { final guardedValue = map['customSql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetPhysicalTableMapCustomSql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      physicalTableMapId: pulumi.Input.fromValue(map['physicalTableMapId'] as String),
      relationalTable: (() { final guardedValue = map['relationalTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetPhysicalTableMapRelationalTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Source: (() { final guardedValue = map['s3Source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetPhysicalTableMapS3Source.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
