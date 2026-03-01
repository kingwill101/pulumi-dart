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
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory GetBucketReplicationConfigurationRuleFilterAndTag.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBucketReplicationConfigurationRuleFilterAndTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
