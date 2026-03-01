// ignore_for_file: unused_element, unnecessary_cast


class BucketReplicationConfigRuleFilterAnd {
  /// Object key name prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  final String? prefix;
  /// Map of tags (key and value pairs) that identifies a subset of objects to which the rule applies. The rule applies only to objects having all the tags in its tagset.
  final Map<String, String>? tags;

  /// Creates a new [BucketReplicationConfigRuleFilterAnd].
  /// [prefix] Object key name prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  /// [tags] Map of tags (key and value pairs) that identifies a subset of objects to which the rule applies. The rule applies only to objects having all the tags in its tagset.
  BucketReplicationConfigRuleFilterAnd({
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'tags': ?tags,
    };
  }

  factory BucketReplicationConfigRuleFilterAnd.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleFilterAnd(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

