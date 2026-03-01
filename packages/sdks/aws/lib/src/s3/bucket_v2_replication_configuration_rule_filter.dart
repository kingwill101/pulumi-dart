// ignore_for_file: unused_element, unnecessary_cast


class BucketV2ReplicationConfigurationRuleFilter {
  /// Object keyname prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  final String? prefix;
  /// A map of tags that identifies subset of objects to which the rule applies.
  /// The rule applies only to objects having all the tags in its tagset.
  final Map<String, String>? tags;

  /// Creates a new [BucketV2ReplicationConfigurationRuleFilter].
  /// [prefix] Object keyname prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  /// [tags] A map of tags that identifies subset of objects to which the rule applies.
  BucketV2ReplicationConfigurationRuleFilter({
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'tags': ?tags,
    };
  }

  factory BucketV2ReplicationConfigurationRuleFilter.fromMap(Map<String, dynamic> map) {
    return BucketV2ReplicationConfigurationRuleFilter(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

