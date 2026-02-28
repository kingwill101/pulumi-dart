// ignore_for_file: unused_element, unnecessary_cast

class ListingRestrictedExportConfig {
  /// If true, enable restricted export.
  final bool? enabled;

  /// (Output)
  /// If true, restrict direct table access(read api/tabledata.list) on linked table.
  final bool? restrictDirectTableAccess;

  /// If true, restrict export of query result derived from restricted linked dataset table.
  final bool? restrictQueryResult;

  /// Creates a new [ListingRestrictedExportConfig].
  /// [enabled] If true, enable restricted export.
  /// [restrictDirectTableAccess] (Output)
  /// [restrictQueryResult] If true, restrict export of query result derived from restricted linked dataset table.
  ListingRestrictedExportConfig({
    this.enabled,
    this.restrictDirectTableAccess,
    this.restrictQueryResult,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final restrictDirectTableAccessValue = restrictDirectTableAccess;
    if (restrictDirectTableAccessValue != null) {
      map['restrictDirectTableAccess'] = restrictDirectTableAccessValue;
    }
    final restrictQueryResultValue = restrictQueryResult;
    if (restrictQueryResultValue != null) {
      map['restrictQueryResult'] = restrictQueryResultValue;
    }
    return map;
  }

  factory ListingRestrictedExportConfig.fromMap(Map<String, dynamic> map) {
    return ListingRestrictedExportConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      restrictDirectTableAccess: map['restrictDirectTableAccess'] == null
          ? null
          : map['restrictDirectTableAccess'] as bool,
      restrictQueryResult: map['restrictQueryResult'] == null
          ? null
          : map['restrictQueryResult'] as bool,
    );
  }
}
