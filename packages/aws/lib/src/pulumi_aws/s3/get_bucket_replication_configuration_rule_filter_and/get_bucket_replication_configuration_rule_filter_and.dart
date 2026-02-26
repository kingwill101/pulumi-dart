// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_bucket_replication_configuration_rule_filter_and_tag/get_bucket_replication_configuration_rule_filter_and_tag.dart';

class GetBucketReplicationConfigurationRuleFilterAnd {
  /// The object key name prefix that identifies the subset of objects to which the rule applies.
  final String prefix;

  /// An unordered list of tags that identify a subset of objects to which the rule applies.
  final List<GetBucketReplicationConfigurationRuleFilterAndTag> tags;

  GetBucketReplicationConfigurationRuleFilterAnd({
    required this.prefix,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['prefix'] = prefix;
    map['tags'] = Input.encodeList<
        GetBucketReplicationConfigurationRuleFilterAndTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetBucketReplicationConfigurationRuleFilterAnd.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleFilterAnd(
      prefix: map['prefix'] as String,
      tags: Input.decodeList<GetBucketReplicationConfigurationRuleFilterAndTag>(
          map['tags'],
          (value) => GetBucketReplicationConfigurationRuleFilterAndTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
