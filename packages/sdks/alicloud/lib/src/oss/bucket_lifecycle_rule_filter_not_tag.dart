// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleFilterNotTag {
  /// The key of the tag that is specified for the objects.
  final pulumi.Input<String> key;

  /// The value of the tag that is specified for the objects.
  final pulumi.Input<String> value;

  /// Creates a new [BucketLifecycleRuleFilterNotTag].
  /// [key] The key of the tag that is specified for the objects.
  /// [value] The value of the tag that is specified for the objects.
  BucketLifecycleRuleFilterNotTag({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory BucketLifecycleRuleFilterNotTag.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleFilterNotTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
