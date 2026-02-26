// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_rdbms_response2.dart';

/// Oracle data source configuration
class OracleSourceConfigResponse2 {
  /// Oracle objects to include in the stream.
  final OracleRdbmsResponse2 allowlist;

  /// Drop large object values.
  final Map<String, dynamic> dropLargeObjects;

  /// Oracle objects to exclude from the stream.
  final OracleRdbmsResponse2 rejectlist;

  OracleSourceConfigResponse2({
    required this.allowlist,
    required this.dropLargeObjects,
    required this.rejectlist,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowlist'] = allowlist.toMap();
    map['dropLargeObjects'] = dropLargeObjects;
    map['rejectlist'] = rejectlist.toMap();
    return map;
  }

  factory OracleSourceConfigResponse2.fromMap(Map<String, dynamic> map) {
    return OracleSourceConfigResponse2(
      allowlist: OracleRdbmsResponse2.fromMap(
          (map['allowlist'] as Map).cast<String, dynamic>()),
      dropLargeObjects:
          (map['dropLargeObjects'] as Map).cast<String, dynamic>(),
      rejectlist: OracleRdbmsResponse2.fromMap(
          (map['rejectlist'] as Map).cast<String, dynamic>()),
    );
  }
}
