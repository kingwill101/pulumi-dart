// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_group_schema_table.dart';

/// Properties of sync group schema.
class SyncGroupSchema {
  /// Name of master sync member where the schema is from.
  final String? masterSyncMemberName;
  /// List of tables in sync group schema.
  final List<SyncGroupSchemaTable>? tables;

  /// Creates a new [SyncGroupSchema].
  /// [masterSyncMemberName] Name of master sync member where the schema is from.
  /// [tables] List of tables in sync group schema.
  SyncGroupSchema({
    this.masterSyncMemberName,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'masterSyncMemberName': ?masterSyncMemberName,
      'tables': ?tables == null ? null : pulumi.Input.encodeList<SyncGroupSchemaTable, Map<String, dynamic>>(tables!, (value) => value.toMap()),
    };
  }

  factory SyncGroupSchema.fromMap(Map<String, dynamic> map) {
    return SyncGroupSchema(
      masterSyncMemberName: map['masterSyncMemberName'] == null ? null : map['masterSyncMemberName'] as String,
      tables: map['tables'] == null ? null : pulumi.Input.decodeList<SyncGroupSchemaTable>(map['tables'], (value) => SyncGroupSchemaTable.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

