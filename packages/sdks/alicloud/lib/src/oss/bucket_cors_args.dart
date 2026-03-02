// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cors_cors_rule.dart';

/// {@template pulumi_oss_bucket_cors_bucket_cors_args_doc}
/// The set of arguments for BucketCors.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_cors_bucket_cors_args_doc}
class BucketCorsArgs {
  /// The name of the Bucket.
  final pulumi.Input<String> bucket;
  /// The Cross-Origin Resource Sharing (CORS) configuration of the Bucket. See `cors_rule` below.
  final pulumi.Input<List<BucketCorsCorsRule>> corsRules;
  /// Specifies whether to return the Vary: Origin header. Valid values: true: returns the Vary: Origin header, regardless of whether the request is a cross-origin request or whether the cross-origin request succeeds. false: does not return the Vary: Origin header. This element is valid only when at least one CORS rule is configured.
  final pulumi.Input<bool>? responseVary;

  /// Creates a new [BucketCorsArgs].
  /// [bucket] The name of the Bucket.
  /// [corsRules] The Cross-Origin Resource Sharing (CORS) configuration of the Bucket. See `cors_rule` below.
  /// [responseVary] Specifies whether to return the Vary: Origin header. Valid values: true: returns the Vary: Origin header, regardless of whether the request is a cross-origin request or whether the cross-origin request succeeds. false: does not return the Vary: Origin header. This element is valid only when at least one CORS rule is configured.
  BucketCorsArgs({
    required this.bucket,
    required this.corsRules,
    this.responseVary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'corsRules': pulumi.Input.mapInputValue<List<BucketCorsCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<BucketCorsCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseVary': ?responseVary,
    };
  }

  factory BucketCorsArgs.fromMap(Map<String, dynamic> map) {
    return BucketCorsArgs(
      bucket: (map['bucket'] as String).input(),
      corsRules: (pulumi.Input.decodeList<BucketCorsCorsRule>(map['corsRules'], (value) => BucketCorsCorsRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseVary: map['responseVary'] == null ? null : (map['responseVary'] as bool).input(),
    );
  }
}

