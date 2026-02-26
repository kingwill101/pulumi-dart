// ignore_for_file: unused_element, unnecessary_cast

/// Restricted export config, used to configure restricted export on linked dataset.
class RestrictedExportConfig2 {
  /// Optional. If true, enable restricted export.
  final bool? enabled;

  /// Optional. If true, restrict export of query result derived from restricted linked dataset table.
  final bool? restrictQueryResult;

  RestrictedExportConfig2({
    this.enabled,
    this.restrictQueryResult,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final restrictQueryResultValue = restrictQueryResult;
    if (restrictQueryResultValue != null) {
      map['restrictQueryResult'] = restrictQueryResultValue;
    }
    return map;
  }

  factory RestrictedExportConfig2.fromMap(Map<String, dynamic> map) {
    return RestrictedExportConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      restrictQueryResult: map['restrictQueryResult'] == null
          ? null
          : map['restrictQueryResult'] as bool,
    );
  }
}
