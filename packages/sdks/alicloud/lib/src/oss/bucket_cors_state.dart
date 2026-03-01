// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cors_cors_rule.dart';

/// Input properties used for looking up and filtering BucketCors resources.
class BucketCorsState {
  /// The name of the Bucket.
  final pulumi.Input<String>? bucket;
  /// The Cross-Origin Resource Sharing (CORS) configuration of the Bucket. See `cors_rule` below.
  final pulumi.Input<List<BucketCorsCorsRule>>? corsRules;
  /// Specifies whether to return the Vary: Origin header. Valid values: true: returns the Vary: Origin header, regardless of whether the request is a cross-origin request or whether the cross-origin request succeeds. false: does not return the Vary: Origin header. This element is valid only when at least one CORS rule is configured.
  final pulumi.Input<bool>? responseVary;

  /// Creates a new [BucketCorsState].
  /// [bucket] The name of the Bucket.
  /// [corsRules] The Cross-Origin Resource Sharing (CORS) configuration of the Bucket. See `cors_rule` below.
  /// [responseVary] Specifies whether to return the Vary: Origin header. Valid values: true: returns the Vary: Origin header, regardless of whether the request is a cross-origin request or whether the cross-origin request succeeds. false: does not return the Vary: Origin header. This element is valid only when at least one CORS rule is configured.
  BucketCorsState({
    pulumi.Output<String>? bucket,
    pulumi.Output<List<BucketCorsCorsRule>>? corsRules,
    pulumi.Output<bool>? responseVary,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      corsRules = pulumi.Input.asOptionalInput<List<BucketCorsCorsRule>>(corsRules),
      responseVary = pulumi.Input.asOptionalInput<bool>(responseVary);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<BucketCorsCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<BucketCorsCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseVary': ?responseVary,
    };
  }

  factory BucketCorsState.fromMap(Map<String, dynamic> map) {
    return BucketCorsState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      corsRules: map['corsRules'] == null ? null : pulumi.Output.create<List<BucketCorsCorsRule>>(pulumi.Input.decodeList<BucketCorsCorsRule>(map['corsRules'], (value) => BucketCorsCorsRule.fromMap((value as Map).cast<String, dynamic>()))),
      responseVary: map['responseVary'] == null ? null : pulumi.Output.create<bool>(map['responseVary'] as bool),
    );
  }
}

