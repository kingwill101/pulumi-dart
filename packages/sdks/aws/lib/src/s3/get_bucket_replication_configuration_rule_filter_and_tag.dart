// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleFilterAndTag {
  /// The key of the tag.
  final pulumi.Input<String> key;
  /// The value of the tag.
  final pulumi.Input<String> value;

  /// Creates a new [GetBucketReplicationConfigurationRuleFilterAndTag].
  /// [key] The key of the tag.
  /// [value] The value of the tag.
  GetBucketReplicationConfigurationRuleFilterAndTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetBucketReplicationConfigurationRuleFilterAndTag.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleFilterAndTag(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

