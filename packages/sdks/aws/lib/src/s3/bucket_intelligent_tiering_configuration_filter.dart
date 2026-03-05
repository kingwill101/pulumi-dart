// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketIntelligentTieringConfigurationFilter {
  /// Object key name prefix that identifies the subset of objects to which the configuration applies.
  final pulumi.Input<String>? prefix;
  /// All of these tags must exist in the object's tag set in order for the configuration to apply.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BucketIntelligentTieringConfigurationFilter].
  /// [prefix] Object key name prefix that identifies the subset of objects to which the configuration applies.
  /// [tags] All of these tags must exist in the object's tag set in order for the configuration to apply.
  BucketIntelligentTieringConfigurationFilter({
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'tags': ?tags,
    };
  }

  factory BucketIntelligentTieringConfigurationFilter.fromMap(Map<String, dynamic> map) {
    return BucketIntelligentTieringConfigurationFilter(
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

