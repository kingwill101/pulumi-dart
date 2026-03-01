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
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory BucketLifecycleConfigurationRuleFilterTag.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleFilterTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

