// ignore_for_file: unused_element, unnecessary_cast


/// Restricted export config, used to configure restricted export on linked dataset.
class RestrictedExportConfigResponse {
  /// Optional. If true, enable restricted export.
  final bool enabled;
  /// If true, restrict direct table access(read api/tabledata.list) on linked table.
  final bool restrictDirectTableAccess;
  /// Optional. If true, restrict export of query result derived from restricted linked dataset table.
  final bool restrictQueryResult;

  /// Creates a new [RestrictedExportConfigResponse].
  /// [enabled] Optional. If true, enable restricted export.
  /// [restrictDirectTableAccess] If true, restrict direct table access(read api/tabledata.list) on linked table.
  /// [restrictQueryResult] Optional. If true, restrict export of query result derived from restricted linked dataset table.
  RestrictedExportConfigResponse({
    required this.enabled,
    required this.restrictDirectTableAccess,
    required this.restrictQueryResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'restrictDirectTableAccess': restrictDirectTableAccess,
      'restrictQueryResult': restrictQueryResult,
    };
  }

  factory RestrictedExportConfigResponse.fromMap(Map<String, dynamic> map) {
    return RestrictedExportConfigResponse(
      enabled: map['enabled'] as bool,
      restrictDirectTableAccess: map['restrictDirectTableAccess'] as bool,
      restrictQueryResult: map['restrictQueryResult'] as bool,
    );
  }
}

