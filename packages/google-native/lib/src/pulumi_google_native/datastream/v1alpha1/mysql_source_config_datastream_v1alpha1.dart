// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_rdbms_datastream_v1alpha1.dart';

/// MySQL source configuration
class MysqlSourceConfigDatastreamV1alpha1 {
  /// MySQL objects to retrieve from the source.
  final MysqlRdbmsDatastreamV1alpha1? allowlist;

  /// MySQL objects to exclude from the stream.
  final MysqlRdbmsDatastreamV1alpha1? rejectlist;

  MysqlSourceConfigDatastreamV1alpha1({
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

  factory MysqlSourceConfigDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return MysqlSourceConfigDatastreamV1alpha1(
      allowlist: map['allowlist'] == null
          ? null
          : MysqlRdbmsDatastreamV1alpha1.fromMap(
              (map['allowlist'] as Map).cast<String, dynamic>()),
      rejectlist: map['rejectlist'] == null
          ? null
          : MysqlRdbmsDatastreamV1alpha1.fromMap(
              (map['rejectlist'] as Map).cast<String, dynamic>()),
    );
  }
}
