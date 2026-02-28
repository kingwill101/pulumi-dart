// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationV2RuleFilterTag {
  /// Name of the object key.
  final String key;

  /// Value of the tag.
  final String value;

  /// Creates a new [BucketLifecycleConfigurationV2RuleFilterTag].
  /// [key] Name of the object key.
  /// [value] Value of the tag.
  BucketLifecycleConfigurationV2RuleFilterTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory BucketLifecycleConfigurationV2RuleFilterTag.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2RuleFilterTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
