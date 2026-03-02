// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_response_header_rule.dart';

/// Input properties used for looking up and filtering BucketResponseHeader resources.
class BucketResponseHeaderState {
  /// The name of the bucket
  final pulumi.Input<String>? bucket;
  /// The container that holds the response header rules. See `rule` below.
  final pulumi.Input<List<BucketResponseHeaderRule>>? rules;

  /// Creates a new [BucketResponseHeaderState].
  /// [bucket] The name of the bucket
  /// [rules] The container that holds the response header rules. See `rule` below.
  BucketResponseHeaderState({
    this.bucket,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<BucketResponseHeaderRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketResponseHeaderRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketResponseHeaderState.fromMap(Map<String, dynamic> map) {
    return BucketResponseHeaderState(
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<BucketResponseHeaderRule>(map['rules']!, (value) => BucketResponseHeaderRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

