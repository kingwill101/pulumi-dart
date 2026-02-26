// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleFilterTag {
  /// Name of the object key.
  final String key;

  /// Value of the tag.
  final String value;

  BucketReplicationConfigRuleFilterTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory BucketReplicationConfigRuleFilterTag.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleFilterTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
