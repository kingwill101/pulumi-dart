// ignore_for_file: unused_element, unnecessary_cast

class BucketIntelligentTieringConfigurationFilter {
  /// Object key name prefix that identifies the subset of objects to which the configuration applies.
  final String? prefix;

  /// All of these tags must exist in the object's tag set in order for the configuration to apply.
  final Map<String, String>? tags;

  BucketIntelligentTieringConfigurationFilter({
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

  factory BucketIntelligentTieringConfigurationFilter.fromMap(
      Map<String, dynamic> map) {
    return BucketIntelligentTieringConfigurationFilter(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
