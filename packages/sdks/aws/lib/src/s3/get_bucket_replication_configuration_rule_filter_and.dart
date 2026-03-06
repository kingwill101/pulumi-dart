// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_filter_and_tag.dart';

class GetBucketReplicationConfigurationRuleFilterAnd {
  /// The object key name prefix that identifies the subset of objects to which the rule applies.
  final pulumi.Input<String> prefix;
  /// An unordered list of tags that identify a subset of objects to which the rule applies.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleFilterAndTag>> tags;

  /// Creates a new [GetBucketReplicationConfigurationRuleFilterAnd].
  /// [prefix] The object key name prefix that identifies the subset of objects to which the rule applies.
  /// [tags] An unordered list of tags that identify a subset of objects to which the rule applies.
  const GetBucketReplicationConfigurationRuleFilterAnd({
    required this.prefix,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
      'tags': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleFilterAndTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleFilterAndTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBucketReplicationConfigurationRuleFilterAnd.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleFilterAnd(
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleFilterAndTag>(map['tags']!, (value) => GetBucketReplicationConfigurationRuleFilterAndTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

