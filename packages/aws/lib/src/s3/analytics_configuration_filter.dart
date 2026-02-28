// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsConfigurationFilter {
  /// Object prefix for filtering.
  final String? prefix;

  /// Set of object tags for filtering.
  final Map<String, String>? tags;

  /// Creates a new [AnalyticsConfigurationFilter].
  /// [prefix] Object prefix for filtering.
  /// [tags] Set of object tags for filtering.
  AnalyticsConfigurationFilter({
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AnalyticsConfigurationFilter.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationFilter(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
