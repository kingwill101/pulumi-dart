// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleFilterAndTag {
  /// The key of the tag.
  final String key;

  /// The value of the tag.
  final String value;

  /// Creates a new [GetBucketReplicationConfigurationRuleFilterAndTag].
  /// [key] The key of the tag.
  /// [value] The value of the tag.
  GetBucketReplicationConfigurationRuleFilterAndTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleFilterAndTag.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleFilterAndTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
