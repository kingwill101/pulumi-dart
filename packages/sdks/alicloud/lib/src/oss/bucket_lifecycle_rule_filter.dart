// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_rule_filter_not.dart';

class BucketLifecycleRuleFilter {
  /// The condition that is matched by objects to which the lifecycle rule does not apply. See `not` below.
  final pulumi.Input<BucketLifecycleRuleFilterNot>? not;
  /// Minimum object size (in bytes) to which the rule applies.
  final pulumi.Input<int>? objectSizeGreaterThan;
  /// Maximum object size (in bytes) to which the rule applies.
  final pulumi.Input<int>? objectSizeLessThan;

  /// Creates a new [BucketLifecycleRuleFilter].
  /// [not] The condition that is matched by objects to which the lifecycle rule does not apply. See `not` below.
  /// [objectSizeGreaterThan] Minimum object size (in bytes) to which the rule applies.
  /// [objectSizeLessThan] Maximum object size (in bytes) to which the rule applies.
  BucketLifecycleRuleFilter({
    this.not,
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'not': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleRuleFilterNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'objectSizeGreaterThan': ?objectSizeGreaterThan,
      'objectSizeLessThan': ?objectSizeLessThan,
    };
  }

  factory BucketLifecycleRuleFilter.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleFilter(
      not: map['not'] == null ? null : (BucketLifecycleRuleFilterNot.fromMap((map['not'] as Map).cast<String, dynamic>())).input(),
      objectSizeGreaterThan: map['objectSizeGreaterThan'] == null ? null : (map['objectSizeGreaterThan'] as int).input(),
      objectSizeLessThan: map['objectSizeLessThan'] == null ? null : (map['objectSizeLessThan'] as int).input(),
    );
  }
}

