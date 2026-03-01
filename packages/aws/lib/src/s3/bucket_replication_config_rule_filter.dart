// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_replication_config_rule_filter_and.dart';
import 'bucket_replication_config_rule_filter_tag.dart';

class BucketReplicationConfigRuleFilter {
  /// Configuration block for specifying rule filters. This element is required only if you specify more than one filter. See and below for more details.
  final BucketReplicationConfigRuleFilterAnd? and;

  /// Object key name prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  final String? prefix;

  /// Configuration block for specifying a tag key and value. See below.
  final BucketReplicationConfigRuleFilterTag? tag;

  /// Creates a new [BucketReplicationConfigRuleFilter].
  /// [and] Configuration block for specifying rule filters. This element is required only if you specify more than one filter. See and below for more details.
  /// [prefix] Object key name prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  /// [tag] Configuration block for specifying a tag key and value. See below.
  BucketReplicationConfigRuleFilter({this.and, this.prefix, this.tag});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?and == null ? null : and!.toMap(),
      'prefix': ?prefix,
      'tag': ?tag == null ? null : tag!.toMap(),
    };
  }

  factory BucketReplicationConfigRuleFilter.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleFilter(
      and: map['and'] == null
          ? null
          : BucketReplicationConfigRuleFilterAnd.fromMap(
              (map['and'] as Map).cast<String, dynamic>(),
            ),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tag: map['tag'] == null
          ? null
          : BucketReplicationConfigRuleFilterTag.fromMap(
              (map['tag'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
