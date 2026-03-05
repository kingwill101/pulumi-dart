// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigurationRuleFilter {
  /// Object keyname prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  final pulumi.Input<String>? prefix;
  /// A map of tags that identifies subset of objects to which the rule applies.
  /// The rule applies only to objects having all the tags in its tagset.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BucketReplicationConfigurationRuleFilter].
  /// [prefix] Object keyname prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  /// [tags] A map of tags that identifies subset of objects to which the rule applies.
  BucketReplicationConfigurationRuleFilter({
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'tags': ?tags,
    };
  }

  factory BucketReplicationConfigurationRuleFilter.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigurationRuleFilter(
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

