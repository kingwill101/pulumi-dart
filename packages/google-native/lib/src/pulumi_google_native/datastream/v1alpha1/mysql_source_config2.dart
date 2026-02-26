// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_rdbms2.dart';

/// MySQL source configuration
class MysqlSourceConfig2 {
  /// MySQL objects to retrieve from the source.
  final MysqlRdbms2? allowlist;

  /// MySQL objects to exclude from the stream.
  final MysqlRdbms2? rejectlist;

  MysqlSourceConfig2({
    this.allowlist,
    this.rejectlist,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowlistValue = allowlist;
    if (allowlistValue != null) {
      map['allowlist'] = allowlistValue.toMap();
    }
    final rejectlistValue = rejectlist;
    if (rejectlistValue != null) {
      map['rejectlist'] = rejectlistValue.toMap();
    }
    return map;
  }

  factory MysqlSourceConfig2.fromMap(Map<String, dynamic> map) {
    return MysqlSourceConfig2(
      allowlist: map['allowlist'] == null
          ? null
          : MysqlRdbms2.fromMap(
              (map['allowlist'] as Map).cast<String, dynamic>()),
      rejectlist: map['rejectlist'] == null
          ? null
          : MysqlRdbms2.fromMap(
              (map['rejectlist'] as Map).cast<String, dynamic>()),
    );
  }
}
