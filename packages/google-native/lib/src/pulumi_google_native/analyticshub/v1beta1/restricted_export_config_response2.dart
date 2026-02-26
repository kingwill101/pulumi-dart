// ignore_for_file: unused_element, unnecessary_cast

/// Restricted export config, used to configure restricted export on linked dataset.
class RestrictedExportConfigResponse2 {
  /// Optional. If true, enable restricted export.
  final bool enabled;

  /// If true, restrict direct table access(read api/tabledata.list) on linked table.
  final bool restrictDirectTableAccess;

  /// Optional. If true, restrict export of query result derived from restricted linked dataset table.
  final bool restrictQueryResult;

  RestrictedExportConfigResponse2({
    required this.enabled,
    required this.restrictDirectTableAccess,
    required this.restrictQueryResult,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['restrictDirectTableAccess'] = restrictDirectTableAccess;
    map['restrictQueryResult'] = restrictQueryResult;
    return map;
  }

  factory RestrictedExportConfigResponse2.fromMap(Map<String, dynamic> map) {
    return RestrictedExportConfigResponse2(
      enabled: map['enabled'] as bool,
      restrictDirectTableAccess: map['restrictDirectTableAccess'] as bool,
      restrictQueryResult: map['restrictQueryResult'] as bool,
    );
  }
}
