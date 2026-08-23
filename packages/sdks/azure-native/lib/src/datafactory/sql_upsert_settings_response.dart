// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sql upsert option settings
class SqlUpsertSettingsResponse {
  /// Schema name for interim table. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? interimSchemaName;
  /// Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  final pulumi.Input<dynamic>? keys;
  /// Specifies whether to use temp db for upsert interim table. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useTempDB;

  /// Creates a new [SqlUpsertSettingsResponse].
  /// [interimSchemaName] Schema name for interim table. Type: string (or Expression with resultType string).
  /// [keys] Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  /// [useTempDB] Specifies whether to use temp db for upsert interim table. Type: boolean (or Expression with resultType boolean).
  const SqlUpsertSettingsResponse({
    this.interimSchemaName,
    this.keys,
    this.useTempDB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interimSchemaName': ?interimSchemaName,
      'keys': ?keys,
      'useTempDB': ?useTempDB,
    };
  }

  factory SqlUpsertSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlUpsertSettingsResponse(
      interimSchemaName: (() { final guardedValue = map['interimSchemaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      useTempDB: (() { final guardedValue = map['useTempDB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
