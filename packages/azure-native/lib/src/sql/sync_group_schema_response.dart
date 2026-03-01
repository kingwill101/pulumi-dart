// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_group_schema_table_response.dart';

/// Properties of sync group schema.
class SyncGroupSchemaResponse {
  /// Name of master sync member where the schema is from.
  final String? masterSyncMemberName;
  /// List of tables in sync group schema.
  final List<SyncGroupSchemaTableResponse>? tables;

  /// Creates a new [SyncGroupSchemaResponse].
  /// [masterSyncMemberName] Name of master sync member where the schema is from.
  /// [tables] List of tables in sync group schema.
  SyncGroupSchemaResponse({
    this.masterSyncMemberName,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'masterSyncMemberName': ?masterSyncMemberName,
      'tables': ?tables == null ? null : pulumi.Input.encodeList<SyncGroupSchemaTableResponse, Map<String, dynamic>>(tables!, (value) => value.toMap()),
    };
  }

  factory SyncGroupSchemaResponse.fromMap(Map<String, dynamic> map) {
    return SyncGroupSchemaResponse(
      masterSyncMemberName: map['masterSyncMemberName'] == null ? null : map['masterSyncMemberName'] as String,
      tables: map['tables'] == null ? null : pulumi.Input.decodeList<SyncGroupSchemaTableResponse>(map['tables'], (value) => SyncGroupSchemaTableResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

