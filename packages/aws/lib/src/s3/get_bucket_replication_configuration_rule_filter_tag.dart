// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleFilterTag {
  /// The key of the tag.
  final String key;

  /// The value of the tag.
  final String value;

  /// Creates a new [GetBucketReplicationConfigurationRuleFilterTag].
  /// [key] The key of the tag.
  /// [value] The value of the tag.
  GetBucketReplicationConfigurationRuleFilterTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleFilterTag.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleFilterTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
