// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_rule_filter_not_tag.dart';

class BucketLifecycleRuleFilterNot {
  /// The prefix in the names of the objects to which the lifecycle rule does not apply.
  final pulumi.Input<String>? prefix;
  /// The tag of the objects to which the lifecycle rule does not apply. See `tag` below.
  final pulumi.Input<BucketLifecycleRuleFilterNotTag>? tag;

  /// Creates a new [BucketLifecycleRuleFilterNot].
  /// [prefix] The prefix in the names of the objects to which the lifecycle rule does not apply.
  /// [tag] The tag of the objects to which the lifecycle rule does not apply. See `tag` below.
  const BucketLifecycleRuleFilterNot({
    this.prefix,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'tag': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleRuleFilterNotTag, Map<String, dynamic>>(tag, (value) => value.toMap()),
    };
  }

  factory BucketLifecycleRuleFilterNot.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleFilterNot(
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleRuleFilterNotTag.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

