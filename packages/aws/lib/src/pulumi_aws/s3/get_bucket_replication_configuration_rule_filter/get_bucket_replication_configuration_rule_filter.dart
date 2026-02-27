// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_bucket_replication_configuration_rule_filter_and/get_bucket_replication_configuration_rule_filter_and.dart';
import '../get_bucket_replication_configuration_rule_filter_tag/get_bucket_replication_configuration_rule_filter_tag.dart';

class GetBucketReplicationConfigurationRuleFilter {
  final List<GetBucketReplicationConfigurationRuleFilterAnd> ands;

  /// The object key name prefix that identifies the subset of objects to which the rule applies.
  final String prefix;

  /// An unordered list of tags that identify a subset of objects to which the rule applies.
  final List<GetBucketReplicationConfigurationRuleFilterTag> tags;

  GetBucketReplicationConfigurationRuleFilter({
    required this.ands,
    required this.prefix,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ands'] = pulumi.Input.encodeList<
        GetBucketReplicationConfigurationRuleFilterAnd,
        Map<String, dynamic>>(ands, (value) => value.toMap());
    map['prefix'] = prefix;
    map['tags'] = pulumi.Input.encodeList<
        GetBucketReplicationConfigurationRuleFilterTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetBucketReplicationConfigurationRuleFilter.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleFilter(
      ands: pulumi.Input.decodeList<
              GetBucketReplicationConfigurationRuleFilterAnd>(
          map['ands'],
          (value) => GetBucketReplicationConfigurationRuleFilterAnd.fromMap(
              (value as Map).cast<String, dynamic>())),
      prefix: map['prefix'] as String,
      tags: pulumi.Input.decodeList<
              GetBucketReplicationConfigurationRuleFilterTag>(
          map['tags'],
          (value) => GetBucketReplicationConfigurationRuleFilterTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
