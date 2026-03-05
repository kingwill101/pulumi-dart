// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_buckets_bucket_lifecycle_rule_expiration.dart';

class GetBucketsBucketLifecycleRule {
  /// Indicate whether the rule is enabled or not.
  final pulumi.Input<bool> enabled;
  /// A list of one element containing expiration attributes of an object. It contains the following attributes:
  final pulumi.Input<GetBucketsBucketLifecycleRuleExpiration> expiration;
  /// Unique ID of the rule.
  final pulumi.Input<String> id;
  /// Prefix applicable to a rule. Only those objects with a matching prefix can be affected by the rule.
  final pulumi.Input<String> prefix;

  /// Creates a new [GetBucketsBucketLifecycleRule].
  /// [enabled] Indicate whether the rule is enabled or not.
  /// [expiration] A list of one element containing expiration attributes of an object. It contains the following attributes:
  /// [id] Unique ID of the rule.
  /// [prefix] Prefix applicable to a rule. Only those objects with a matching prefix can be affected by the rule.
  GetBucketsBucketLifecycleRule({
    required this.enabled,
    required this.expiration,
    required this.id,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'expiration': pulumi.Input.mapInputValue<GetBucketsBucketLifecycleRuleExpiration, Map<String, dynamic>>(expiration, (value) => value.toMap()),
      'id': id,
      'prefix': prefix,
    };
  }

  factory GetBucketsBucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucketLifecycleRule(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expiration: pulumi.Input.fromValue(GetBucketsBucketLifecycleRuleExpiration.fromMap((map['expiration']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}

