// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleConfigurationRuleFilterS3Control {
  /// Object prefix for rule filtering.
  final pulumi.Input<String>? prefix;

  /// Key-value map of object tags for rule filtering.
  final pulumi.Input<Map<String, String>>? tags;

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
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
