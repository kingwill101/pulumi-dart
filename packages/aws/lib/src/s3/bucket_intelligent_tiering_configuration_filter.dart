// ignore_for_file: unused_element, unnecessary_cast

class BucketIntelligentTieringConfigurationFilter {
  /// Object key name prefix that identifies the subset of objects to which the configuration applies.
  final String? prefix;

  /// All of these tags must exist in the object's tag set in order for the configuration to apply.
  final Map<String, String>? tags;

  /// Creates a new [BucketIntelligentTieringConfigurationFilter].
  /// [prefix] Object key name prefix that identifies the subset of objects to which the configuration applies.
  /// [tags] All of these tags must exist in the object's tag set in order for the configuration to apply.
  BucketIntelligentTieringConfigurationFilter({this.prefix, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'prefix': ?prefix, 'tags': ?tags};
  }

  factory BucketIntelligentTieringConfigurationFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketIntelligentTieringConfigurationFilter(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
