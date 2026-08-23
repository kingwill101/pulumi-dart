// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_configuration_v2_rule_filter_and.dart';
import 'bucket_lifecycle_configuration_v2_rule_filter_tag.dart';

class BucketLifecycleConfigurationV2RuleFilter {
  /// Configuration block used to apply a logical `AND` to two or more predicates. See below. The Lifecycle Rule will apply to any object matching all the predicates configured inside the `and` block.
  final pulumi.Input<BucketLifecycleConfigurationV2RuleFilterAnd>? and;
  /// Minimum object size (in bytes) to which the rule applies.
  final pulumi.Input<int>? objectSizeGreaterThan;
  /// Maximum object size (in bytes) to which the rule applies.
  final pulumi.Input<int>? objectSizeLessThan;
  /// Prefix identifying one or more objects to which the rule applies. Defaults to an empty string (`""`) if not specified.
  final pulumi.Input<String>? prefix;
  /// Configuration block for specifying a tag key and value. See below.
  final pulumi.Input<BucketLifecycleConfigurationV2RuleFilterTag>? tag;

  /// Creates a new [BucketLifecycleConfigurationV2RuleFilter].
  /// [and] Configuration block used to apply a logical `AND` to two or more predicates. See below. The Lifecycle Rule will apply to any object matching all the predicates configured inside the `and` block.
  /// [objectSizeGreaterThan] Minimum object size (in bytes) to which the rule applies.
  /// [objectSizeLessThan] Maximum object size (in bytes) to which the rule applies.
  /// [prefix] Prefix identifying one or more objects to which the rule applies. Defaults to an empty string (`""`) if not specified.
  /// [tag] Configuration block for specifying a tag key and value. See below.
  const BucketLifecycleConfigurationV2RuleFilter({
    this.and,
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationV2RuleFilterAnd, Map<String, dynamic>>(and, (value) => value.toMap()),
      'objectSizeGreaterThan': ?objectSizeGreaterThan,
      'objectSizeLessThan': ?objectSizeLessThan,
      'prefix': ?prefix,
      'tag': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationV2RuleFilterTag, Map<String, dynamic>>(tag, (value) => value.toMap()),
    };
  }

  factory BucketLifecycleConfigurationV2RuleFilter.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2RuleFilter(
      and: (() { final guardedValue = map['and']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleConfigurationV2RuleFilterAnd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objectSizeGreaterThan: (() { final guardedValue = map['objectSizeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      objectSizeLessThan: (() { final guardedValue = map['objectSizeLessThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleConfigurationV2RuleFilterTag.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
