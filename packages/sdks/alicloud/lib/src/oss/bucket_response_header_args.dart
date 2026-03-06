// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_response_header_rule.dart';

/// {@template pulumi_oss_bucket_response_header_bucket_response_header_args_doc}
/// The set of arguments for BucketResponseHeader.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_response_header_bucket_response_header_args_doc}
class BucketResponseHeaderArgs {
  /// The name of the bucket
  final pulumi.Input<String> bucket;
  /// The container that holds the response header rules. See `rule` below.
  final pulumi.Input<List<BucketResponseHeaderRule>>? rules;

  /// Creates a new [BucketResponseHeaderArgs].
  /// [bucket] The name of the bucket
  /// [rules] The container that holds the response header rules. See `rule` below.
  const BucketResponseHeaderArgs({
    required this.bucket,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<BucketResponseHeaderRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketResponseHeaderRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketResponseHeaderArgs.fromMap(Map<String, dynamic> map) {
    return BucketResponseHeaderArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketResponseHeaderRule>(guardedValue, (value) => BucketResponseHeaderRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

