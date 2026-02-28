// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleFilterTag {
  /// Name of the object key.
  final String key;

  /// Value of the tag.
  final String value;

  /// Creates a new [BucketLifecycleConfigurationRuleFilterTag].
  /// [key] Name of the object key.
  /// [value] Value of the tag.
  BucketLifecycleConfigurationRuleFilterTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory BucketLifecycleConfigurationRuleFilterTag.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleFilterTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
