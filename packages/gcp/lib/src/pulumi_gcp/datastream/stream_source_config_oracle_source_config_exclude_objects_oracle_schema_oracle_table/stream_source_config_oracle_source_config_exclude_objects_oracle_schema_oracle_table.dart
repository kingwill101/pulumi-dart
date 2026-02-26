// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_oracle_source_config_exclude_objects_oracle_schema_oracle_table_oracle_column/stream_source_config_oracle_source_config_exclude_objects_oracle_schema_oracle_table_oracle_column.dart';

class StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable {
  /// Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<
          StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn>?
      oracleColumns;

  /// Table name.
  final String table;

  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable({
    this.oracleColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oracleColumnsValue = oracleColumns;
    if (oracleColumnsValue != null) {
      map['oracleColumns'] = Input.encodeList<
          StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn,
          Map<String, dynamic>>(oracleColumnsValue, (value) => value.toMap());
    }
    map['table'] = table;
    return map;
  }

  factory StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable(
      oracleColumns: map['oracleColumns'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn>(
              map['oracleColumns'],
              (value) =>
                  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn
                      .fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}
