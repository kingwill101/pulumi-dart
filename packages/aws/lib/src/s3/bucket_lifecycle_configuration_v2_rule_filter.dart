// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_lifecycle_configuration_v2_rule_filter_and.dart';
import 'bucket_lifecycle_configuration_v2_rule_filter_tag.dart';

class BucketLifecycleConfigurationV2RuleFilter {
  /// Configuration block used to apply a logical `AND` to two or more predicates. See below. The Lifecycle Rule will apply to any object matching all the predicates configured inside the `and` block.
  final BucketLifecycleConfigurationV2RuleFilterAnd? and;

  /// Minimum object size (in bytes) to which the rule applies.
  final int? objectSizeGreaterThan;

  /// Maximum object size (in bytes) to which the rule applies.
  final int? objectSizeLessThan;

  /// Prefix identifying one or more objects to which the rule applies. Defaults to an empty string (`""`) if not specified.
  final String? prefix;

  /// Configuration block for specifying a tag key and value. See below.
  final BucketLifecycleConfigurationV2RuleFilterTag? tag;

  /// Creates a new [BucketLifecycleConfigurationV2RuleFilter].
  /// [and] Configuration block used to apply a logical `AND` to two or more predicates. See below. The Lifecycle Rule will apply to any object matching all the predicates configured inside the `and` block.
  /// [objectSizeGreaterThan] Minimum object size (in bytes) to which the rule applies.
  /// [objectSizeLessThan] Maximum object size (in bytes) to which the rule applies.
  /// [prefix] Prefix identifying one or more objects to which the rule applies. Defaults to an empty string (`""`) if not specified.
  /// [tag] Configuration block for specifying a tag key and value. See below.
  BucketLifecycleConfigurationV2RuleFilter({
    this.and,
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?and == null ? null : and!.toMap(),
      'objectSizeGreaterThan': ?objectSizeGreaterThan,
      'objectSizeLessThan': ?objectSizeLessThan,
      'prefix': ?prefix,
      'tag': ?tag == null ? null : tag!.toMap(),
    };
  }

  factory BucketLifecycleConfigurationV2RuleFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketLifecycleConfigurationV2RuleFilter(
      and: map['and'] == null
          ? null
          : BucketLifecycleConfigurationV2RuleFilterAnd.fromMap(
              (map['and'] as Map).cast<String, dynamic>(),
            ),
      objectSizeGreaterThan: map['objectSizeGreaterThan'] == null
          ? null
          : map['objectSizeGreaterThan'] as int,
      objectSizeLessThan: map['objectSizeLessThan'] == null
          ? null
          : map['objectSizeLessThan'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tag: map['tag'] == null
          ? null
          : BucketLifecycleConfigurationV2RuleFilterTag.fromMap(
              (map['tag'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
