// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleConfigurationV2RuleFilterTag {
  /// Name of the object key.
  final pulumi.Input<String> key;
  /// Value of the tag.
  final pulumi.Input<String> value;

  /// Creates a new [BucketLifecycleConfigurationV2RuleFilterTag].
  /// [key] Name of the object key.
  /// [value] Value of the tag.
  BucketLifecycleConfigurationV2RuleFilterTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory BucketLifecycleConfigurationV2RuleFilterTag.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2RuleFilterTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

