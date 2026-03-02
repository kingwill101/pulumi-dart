// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleConfigurationRuleFilterAnd {
  /// Minimum object size to which the rule applies. Value must be at least `0` if specified. Defaults to 128000 (128 KB) for all `storage_class` values unless `transition_default_minimum_object_size` specifies otherwise.
  final pulumi.Input<int>? objectSizeGreaterThan;
  /// Maximum object size to which the rule applies. Value must be at least `1` if specified.
  final pulumi.Input<int>? objectSizeLessThan;
  /// Prefix identifying one or more objects to which the rule applies.
  final pulumi.Input<String>? prefix;
  /// Key-value map of resource tags.
  /// All of these tags must exist in the object's tag set in order for the rule to apply.
  /// If set, must contain at least one key-value pair.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BucketLifecycleConfigurationRuleFilterAnd].
  /// [objectSizeGreaterThan] Minimum object size to which the rule applies. Value must be at least `0` if specified. Defaults to 128000 (128 KB) for all `storage_class` values unless `transition_default_minimum_object_size` specifies otherwise.
  /// [objectSizeLessThan] Maximum object size to which the rule applies. Value must be at least `1` if specified.
  /// [prefix] Prefix identifying one or more objects to which the rule applies.
  /// [tags] Key-value map of resource tags.
  BucketLifecycleConfigurationRuleFilterAnd({
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

  factory BucketLifecycleConfigurationRuleFilterAnd.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleFilterAnd(
      objectSizeGreaterThan: map['objectSizeGreaterThan'] == null ? null : (map['objectSizeGreaterThan'] as int).input(),
      objectSizeLessThan: map['objectSizeLessThan'] == null ? null : (map['objectSizeLessThan'] as int).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

