// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleFilterTag {
  /// The key of the tag.
  final pulumi.Input<String> key;

  /// The value of the tag.
  final pulumi.Input<String> value;

  /// Creates a new [GetBucketReplicationConfigurationRuleFilterTag].
  /// [key] The key of the tag.
  /// [value] The value of the tag.
  GetBucketReplicationConfigurationRuleFilterTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory GetBucketReplicationConfigurationRuleFilterTag.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBucketReplicationConfigurationRuleFilterTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
