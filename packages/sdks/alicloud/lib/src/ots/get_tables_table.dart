// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tables_table_defined_column.dart';
import 'get_tables_table_primary_key.dart';

class GetTablesTable {
  final pulumi.Input<List<GetTablesTableDefinedColumn>> definedColumns;
  /// ID of the table. The value is `&lt;instance_name&gt;:&lt;table_name&gt;`.
  final pulumi.Input<String> id;
  /// The name of OTS instance.
  final pulumi.Input<String> instanceName;
  /// The maximum number of versions stored in this table.
  final pulumi.Input<int> maxVersion;
  /// The property of `TableMeta` which indicates the structure information of a table.
  final pulumi.Input<List<GetTablesTablePrimaryKey>> primaryKeys;
  /// The table name of the OTS which could not be changed.
  final pulumi.Input<String> tableName;
  /// The retention time of data stored in this table.
  final pulumi.Input<int> timeToLive;

  /// Creates a new [GetTablesTable].
  /// [definedColumns] Required.
  /// [id] ID of the table. The value is `&lt;instance_name&gt;:&lt;table_name&gt;`.
  /// [instanceName] The name of OTS instance.
  /// [maxVersion] The maximum number of versions stored in this table.
  /// [primaryKeys] The property of `TableMeta` which indicates the structure information of a table.
  /// [tableName] The table name of the OTS which could not be changed.
  /// [timeToLive] The retention time of data stored in this table.
  GetTablesTable({
    required this.definedColumns,
    required this.id,
    required this.instanceName,
    required this.maxVersion,
    required this.primaryKeys,
    required this.tableName,
    required this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definedColumns': pulumi.Input.mapInputValue<List<GetTablesTableDefinedColumn>, List<Map<String, dynamic>>>(definedColumns, (value) => pulumi.Input.encodeList<GetTablesTableDefinedColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'instanceName': instanceName,
      'maxVersion': maxVersion,
      'primaryKeys': pulumi.Input.mapInputValue<List<GetTablesTablePrimaryKey>, List<Map<String, dynamic>>>(primaryKeys, (value) => pulumi.Input.encodeList<GetTablesTablePrimaryKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableName': tableName,
      'timeToLive': timeToLive,
    };
  }

  factory GetTablesTable.fromMap(Map<String, dynamic> map) {
    return GetTablesTable(
      definedColumns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTablesTableDefinedColumn>(map['definedColumns']!, (value) => GetTablesTableDefinedColumn.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      maxVersion: pulumi.Input.fromValue(map['maxVersion'] as int),
      primaryKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTablesTablePrimaryKey>(map['primaryKeys']!, (value) => GetTablesTablePrimaryKey.fromMap((value as Map).cast<String, dynamic>()))),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      timeToLive: pulumi.Input.fromValue(map['timeToLive'] as int),
    );
  }
}

