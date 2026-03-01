// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iapp_table_row.dart';

class IAppTable {
  final List<String>? columnNames;
  /// Name of origin
  final String? encryptedColumns;
  /// Name of the iApp.
  final String? name;
  final List<IAppTableRow>? rows;

  /// Creates a new [IAppTable].
  /// [columnNames] Optional.
  /// [encryptedColumns] Name of origin
  /// [name] Name of the iApp.
  /// [rows] Optional.
  IAppTable({
    this.columnNames,
    this.encryptedColumns,
    this.name,
    this.rows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnNames': ?columnNames,
      'encryptedColumns': ?encryptedColumns,
      'name': ?name,
      'rows': ?rows == null ? null : pulumi.Input.encodeList<IAppTableRow, Map<String, dynamic>>(rows!, (value) => value.toMap()),
    };
  }

  factory IAppTable.fromMap(Map<String, dynamic> map) {
    return IAppTable(
      columnNames: map['columnNames'] == null ? null : (map['columnNames'] as List).cast<String>(),
      encryptedColumns: map['encryptedColumns'] == null ? null : map['encryptedColumns'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      rows: map['rows'] == null ? null : pulumi.Input.decodeList<IAppTableRow>(map['rows'], (value) => IAppTableRow.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

