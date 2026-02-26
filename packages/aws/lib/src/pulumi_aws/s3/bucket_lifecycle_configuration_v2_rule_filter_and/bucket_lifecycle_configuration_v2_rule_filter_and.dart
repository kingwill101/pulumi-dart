// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationV2RuleFilterAnd {
  /// Minimum object size to which the rule applies. Value must be at least <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> if specified. Defaults to 128000 (128 KB) for all <span pulumi-lang-nodejs="`storageClass`" pulumi-lang-dotnet="`StorageClass`" pulumi-lang-go="`storageClass`" pulumi-lang-python="`storage_class`" pulumi-lang-yaml="`storageClass`" pulumi-lang-java="`storageClass`">`storage_class`</span> values unless <span pulumi-lang-nodejs="`transitionDefaultMinimumObjectSize`" pulumi-lang-dotnet="`TransitionDefaultMinimumObjectSize`" pulumi-lang-go="`transitionDefaultMinimumObjectSize`" pulumi-lang-python="`transition_default_minimum_object_size`" pulumi-lang-yaml="`transitionDefaultMinimumObjectSize`" pulumi-lang-java="`transitionDefaultMinimumObjectSize`">`transition_default_minimum_object_size`</span> specifies otherwise.
  final int? objectSizeGreaterThan;

  /// Maximum object size to which the rule applies. Value must be at least <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> if specified.
  final int? objectSizeLessThan;

  /// Prefix identifying one or more objects to which the rule applies.
  final String? prefix;

  /// Key-value map of resource tags.
  /// All of these tags must exist in the object's tag set in order for the rule to apply.
  /// If set, must contain at least one key-value pair.
  final Map<String, String>? tags;

  BucketLifecycleConfigurationV2RuleFilterAnd({
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory BucketLifecycleConfigurationV2RuleFilterAnd.fromMap(
      Map<String, dynamic> map) {
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
