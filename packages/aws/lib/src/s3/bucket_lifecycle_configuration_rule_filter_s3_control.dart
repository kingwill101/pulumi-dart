// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleFilterS3Control {
  /// Object prefix for rule filtering.
  final String? prefix;

  /// Key-value map of object tags for rule filtering.
  final Map<String, String>? tags;

  /// Creates a new [BucketLifecycleConfigurationRuleFilterS3Control].
  /// [prefix] Object prefix for rule filtering.
  /// [tags] Key-value map of object tags for rule filtering.
  BucketLifecycleConfigurationRuleFilterS3Control({this.prefix, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'prefix': ?prefix, 'tags': ?tags};
  }

  factory BucketLifecycleConfigurationRuleFilterS3Control.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketLifecycleConfigurationRuleFilterS3Control(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
