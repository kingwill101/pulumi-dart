// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sql DW upsert option settings
class SqlDWUpsertSettingsResponse {
  /// Schema name for interim table. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? interimSchemaName;

  /// Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  final pulumi.Input<dynamic>? keys;

  /// Creates a new [SqlDWUpsertSettingsResponse].
  /// [interimSchemaName] Schema name for interim table. Type: string (or Expression with resultType string).
  /// [keys] Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  SqlDWUpsertSettingsResponse({this.interimSchemaName, this.keys});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interimSchemaName': ?interimSchemaName,
      'keys': ?keys,
    };
  }

  factory SqlDWUpsertSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlDWUpsertSettingsResponse(
      interimSchemaName: (() {
        final guardedValue = map['interimSchemaName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      keys: (() {
        final guardedValue = map['keys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
