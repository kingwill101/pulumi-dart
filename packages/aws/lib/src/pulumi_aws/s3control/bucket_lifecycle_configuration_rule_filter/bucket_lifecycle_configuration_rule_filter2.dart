// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleFilter2 {
  /// Object prefix for rule filtering.
  final String? prefix;

  /// Key-value map of object tags for rule filtering.
  final Map<String, String>? tags;

  BucketLifecycleConfigurationRuleFilter2({
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

  factory BucketLifecycleConfigurationRuleFilter2.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleFilter2(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
