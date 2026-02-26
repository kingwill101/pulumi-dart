// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_rdbms_response2.dart';

/// MySQL source configuration
class MysqlSourceConfigResponse2 {
  /// MySQL objects to retrieve from the source.
  final MysqlRdbmsResponse2 allowlist;

  /// MySQL objects to exclude from the stream.
  final MysqlRdbmsResponse2 rejectlist;

  MysqlSourceConfigResponse2({
    required this.allowlist,
    required this.rejectlist,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowlist'] = allowlist.toMap();
    map['rejectlist'] = rejectlist.toMap();
    return map;
  }

  factory MysqlSourceConfigResponse2.fromMap(Map<String, dynamic> map) {
    return MysqlSourceConfigResponse2(
      allowlist: MysqlRdbmsResponse2.fromMap(
          (map['allowlist'] as Map).cast<String, dynamic>()),
      rejectlist: MysqlRdbmsResponse2.fromMap(
          (map['rejectlist'] as Map).cast<String, dynamic>()),
    );
  }
}
