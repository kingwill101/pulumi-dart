// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationV2RuleFilterAnd {
  /// Minimum object size to which the rule applies. Value must be at least `0` if specified. Defaults to 128000 (128 KB) for all `storage_class` values unless `transition_default_minimum_object_size` specifies otherwise.
  final int? objectSizeGreaterThan;

  /// Maximum object size to which the rule applies. Value must be at least `1` if specified.
  final int? objectSizeLessThan;

  /// Prefix identifying one or more objects to which the rule applies.
  final String? prefix;

  /// Key-value map of resource tags.
  /// All of these tags must exist in the object's tag set in order for the rule to apply.
  /// If set, must contain at least one key-value pair.
  final Map<String, String>? tags;

  /// Creates a new [BucketLifecycleConfigurationV2RuleFilterAnd].
  /// [objectSizeGreaterThan] Minimum object size to which the rule applies. Value must be at least `0` if specified. Defaults to 128000 (128 KB) for all `storage_class` values unless `transition_default_minimum_object_size` specifies otherwise.
  /// [objectSizeLessThan] Maximum object size to which the rule applies. Value must be at least `1` if specified.
  /// [prefix] Prefix identifying one or more objects to which the rule applies.
  /// [tags] Key-value map of resource tags.
  BucketLifecycleConfigurationV2RuleFilterAnd({
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

  factory BucketLifecycleConfigurationV2RuleFilterAnd.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketLifecycleConfigurationV2RuleFilterAnd(
      objectSizeGreaterThan: map['objectSizeGreaterThan'] == null
          ? null
          : map['objectSizeGreaterThan'] as int,
      objectSizeLessThan: map['objectSizeLessThan'] == null
          ? null
          : map['objectSizeLessThan'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
