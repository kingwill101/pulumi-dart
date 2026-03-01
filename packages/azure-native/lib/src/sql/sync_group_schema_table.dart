// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_group_schema_table_column.dart';

/// Properties of table in sync group schema.
class SyncGroupSchemaTable {
  /// List of columns in sync group schema.
  final List<SyncGroupSchemaTableColumn>? columns;
  /// Quoted name of sync group schema table.
  final String? quotedName;

  /// Creates a new [SyncGroupSchemaTable].
  /// [columns] List of columns in sync group schema.
  /// [quotedName] Quoted name of sync group schema table.
  SyncGroupSchemaTable({
    this.columns,
    this.quotedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns == null ? null : pulumi.Input.encodeList<SyncGroupSchemaTableColumn, Map<String, dynamic>>(columns!, (value) => value.toMap()),
      'quotedName': ?quotedName,
    };
  }

  factory SyncGroupSchemaTable.fromMap(Map<String, dynamic> map) {
    return SyncGroupSchemaTable(
      columns: map['columns'] == null ? null : pulumi.Input.decodeList<SyncGroupSchemaTableColumn>(map['columns'], (value) => SyncGroupSchemaTableColumn.fromMap((value as Map).cast<String, dynamic>())),
      quotedName: map['quotedName'] == null ? null : map['quotedName'] as String,
    );
  }
}

