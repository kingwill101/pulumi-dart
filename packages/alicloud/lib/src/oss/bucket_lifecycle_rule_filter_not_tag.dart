// ignore_for_file: unused_element, unnecessary_cast


class BucketLifecycleRuleFilterNotTag {
  /// The key of the tag that is specified for the objects.
  final String key;
  /// The value of the tag that is specified for the objects.
  final String value;

  /// Creates a new [BucketLifecycleRuleFilterNotTag].
  /// [key] The key of the tag that is specified for the objects.
  /// [value] The value of the tag that is specified for the objects.
  BucketLifecycleRuleFilterNotTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory BucketLifecycleRuleFilterNotTag.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleFilterNotTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

