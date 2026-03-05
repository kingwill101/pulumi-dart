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
      not: (() { final guardedValue = map['not']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleRuleFilterNot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objectSizeGreaterThan: (() { final guardedValue = map['objectSizeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      objectSizeLessThan: (() { final guardedValue = map['objectSizeLessThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

