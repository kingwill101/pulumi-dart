// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_lifecycle_configuration_rule_filter_and/bucket_lifecycle_configuration_rule_filter_and.dart';
import '../bucket_lifecycle_configuration_rule_filter_tag/bucket_lifecycle_configuration_rule_filter_tag.dart';

class BucketLifecycleConfigurationRuleFilter {
  /// Configuration block used to apply a logical `AND` to two or more predicates. See below. The Lifecycle Rule will apply to any object matching all the predicates configured inside the `and` block.
  final BucketLifecycleConfigurationRuleFilterAnd? and;

  /// Minimum object size (in bytes) to which the rule applies.
  final int? objectSizeGreaterThan;

  /// Maximum object size (in bytes) to which the rule applies.
  final int? objectSizeLessThan;

  /// Prefix identifying one or more objects to which the rule applies. Defaults to an empty string (`""`) if not specified.
  final String? prefix;

  /// Configuration block for specifying a tag key and value. See below.
  final BucketLifecycleConfigurationRuleFilterTag? tag;

  BucketLifecycleConfigurationRuleFilter({
    this.and,
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final andValue = and;
    if (andValue != null) {
      map['and'] = andValue.toMap();
    }
    final objectSizeGreaterThanValue = objectSizeGreaterThan;
    if (objectSizeGreaterThanValue != null) {
      map['objectSizeGreaterThan'] = objectSizeGreaterThanValue;
    }
    final objectSizeLessThanValue = objectSizeLessThan;
    if (objectSizeLessThanValue != null) {
      map['objectSizeLessThan'] = objectSizeLessThanValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue.toMap();
    }
    return map;
  }

  factory BucketLifecycleConfigurationRuleFilter.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleFilter(
      and: map['and'] == null
          ? null
          : BucketLifecycleConfigurationRuleFilterAnd.fromMap(
              (map['and'] as Map).cast<String, dynamic>()),
      objectSizeGreaterThan: map['objectSizeGreaterThan'] == null
          ? null
          : map['objectSizeGreaterThan'] as int,
      objectSizeLessThan: map['objectSizeLessThan'] == null
          ? null
          : map['objectSizeLessThan'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tag: map['tag'] == null
          ? null
          : BucketLifecycleConfigurationRuleFilterTag.fromMap(
              (map['tag'] as Map).cast<String, dynamic>()),
    );
  }
}
