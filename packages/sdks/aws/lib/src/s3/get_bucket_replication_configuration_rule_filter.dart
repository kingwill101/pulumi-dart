// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_filter_and.dart';
import 'get_bucket_replication_configuration_rule_filter_tag.dart';

class GetBucketReplicationConfigurationRuleFilter {
  /// Configuration block for specifying rule filters. See `and` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleFilterAnd>> ands;
  /// Object key name prefix that identifies the subset of objects to which the rule applies.
  final pulumi.Input<String> prefix;
  /// List of tags that identify a subset of objects to which the rule applies. See `tag` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleFilterTag>> tags;

  /// Creates a new [GetBucketReplicationConfigurationRuleFilter].
  /// [ands] Configuration block for specifying rule filters. See `and` Block below.
  /// [prefix] Object key name prefix that identifies the subset of objects to which the rule applies.
  /// [tags] List of tags that identify a subset of objects to which the rule applies. See `tag` Block below.
  const GetBucketReplicationConfigurationRuleFilter({
    required this.ands,
    required this.prefix,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleFilterAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleFilterAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefix': prefix,
      'tags': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleFilterTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleFilterTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBucketReplicationConfigurationRuleFilter.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleFilter(
      ands: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleFilterAnd>(map['ands']!, (value) => GetBucketReplicationConfigurationRuleFilterAnd.fromMap((value as Map).cast<String, dynamic>()))),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleFilterTag>(map['tags']!, (value) => GetBucketReplicationConfigurationRuleFilterTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
