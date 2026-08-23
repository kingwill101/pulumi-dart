// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleFilterTag {
  /// Name of the object key.
  final pulumi.Input<String> key;
  /// Value of the tag.
  final pulumi.Input<String> value;

  /// Creates a new [GetBucketReplicationConfigurationRuleFilterTag].
  /// [key] Name of the object key.
  /// [value] Value of the tag.
  const GetBucketReplicationConfigurationRuleFilterTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetBucketReplicationConfigurationRuleFilterTag.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleFilterTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
