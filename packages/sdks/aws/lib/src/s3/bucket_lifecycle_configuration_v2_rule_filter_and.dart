// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleConfigurationV2RuleFilterAnd {
  /// Minimum object size to which the rule applies. Value must be at least `0` if specified. Defaults to 128000 (128 KB) for all `storageClass` values unless `transitionDefaultMinimumObjectSize` specifies otherwise.
  final pulumi.Input<int?>? objectSizeGreaterThan;
  /// Maximum object size to which the rule applies. Value must be at least `1` if specified.
  final pulumi.Input<int?>? objectSizeLessThan;
  /// Prefix identifying one or more objects to which the rule applies.
  final pulumi.Input<String?>? prefix;
  /// Key-value map of resource tags. All of these tags must exist in the object's tag set in order for the rule to apply. If set, must contain at least one key-value pair.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [BucketLifecycleConfigurationV2RuleFilterAnd].
  /// [objectSizeGreaterThan] Minimum object size to which the rule applies. Value must be at least `0` if specified. Defaults to 128000 (128 KB) for all `storageClass` values unless `transitionDefaultMinimumObjectSize` specifies otherwise.
  /// [objectSizeLessThan] Maximum object size to which the rule applies. Value must be at least `1` if specified.
  /// [prefix] Prefix identifying one or more objects to which the rule applies.
  /// [tags] Key-value map of resource tags. All of these tags must exist in the object's tag set in order for the rule to apply. If set, must contain at least one key-value pair.
  const BucketLifecycleConfigurationV2RuleFilterAnd({
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectSizeGreaterThan': ?objectSizeGreaterThan,
      'objectSizeLessThan': ?objectSizeLessThan,
      'prefix': ?prefix,
      'tags': ?tags,
    };
  }

  factory BucketLifecycleConfigurationV2RuleFilterAnd.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2RuleFilterAnd(
      objectSizeGreaterThan: (() { final guardedValue = map['objectSizeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      objectSizeLessThan: (() { final guardedValue = map['objectSizeLessThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
