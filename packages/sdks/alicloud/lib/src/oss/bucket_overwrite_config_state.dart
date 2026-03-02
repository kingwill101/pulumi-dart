// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_overwrite_config_rule.dart';

/// Input properties used for looking up and filtering BucketOverwriteConfig resources.
class BucketOverwriteConfigState {
  /// The name of the bucket
  final pulumi.Input<String>? bucket;
  /// Forbid overwrite rule See `rule` below.
  final pulumi.Input<List<BucketOverwriteConfigRule>>? rules;

  /// Creates a new [BucketOverwriteConfigState].
  /// [bucket] The name of the bucket
  /// [rules] Forbid overwrite rule See `rule` below.
  BucketOverwriteConfigState({
    this.bucket,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<BucketOverwriteConfigRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketOverwriteConfigRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketOverwriteConfigState.fromMap(Map<String, dynamic> map) {
    return BucketOverwriteConfigState(
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<BucketOverwriteConfigRule>(map['rules']!, (value) => BucketOverwriteConfigRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

