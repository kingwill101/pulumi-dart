// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_rdbms2.dart';

/// Oracle data source configuration
class OracleSourceConfig2 {
  /// Oracle objects to include in the stream.
  final OracleRdbms2? allowlist;

  /// Drop large object values.
  final Map<String, dynamic>? dropLargeObjects;

  /// Oracle objects to exclude from the stream.
  final OracleRdbms2? rejectlist;

  OracleSourceConfig2({
    this.allowlist,
    this.dropLargeObjects,
    this.rejectlist,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowlistValue = allowlist;
    if (allowlistValue != null) {
      map['allowlist'] = allowlistValue.toMap();
    }
    final dropLargeObjectsValue = dropLargeObjects;
    if (dropLargeObjectsValue != null) {
      map['dropLargeObjects'] = dropLargeObjectsValue;
    }
    final rejectlistValue = rejectlist;
    if (rejectlistValue != null) {
      map['rejectlist'] = rejectlistValue.toMap();
    }
    return map;
  }

  factory OracleSourceConfig2.fromMap(Map<String, dynamic> map) {
    return OracleSourceConfig2(
      allowlist: map['allowlist'] == null
          ? null
          : OracleRdbms2.fromMap(
              (map['allowlist'] as Map).cast<String, dynamic>()),
      dropLargeObjects: map['dropLargeObjects'] == null
          ? null
          : (map['dropLargeObjects'] as Map).cast<String, dynamic>(),
      rejectlist: map['rejectlist'] == null
          ? null
          : OracleRdbms2.fromMap(
              (map['rejectlist'] as Map).cast<String, dynamic>()),
    );
  }
}
