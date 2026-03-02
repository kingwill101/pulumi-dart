// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cors_configuration_v2_cors_rule.dart';

/// Input properties used for looking up and filtering BucketCorsConfigurationV2 resources.
class BucketCorsConfigurationV2State {
  /// Name of the bucket.
  final pulumi.Input<String>? bucket;
  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  final pulumi.Input<List<BucketCorsConfigurationV2CorsRule>>? corsRules;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketCorsConfigurationV2State].
  /// [bucket] Name of the bucket.
  /// [corsRules] Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketCorsConfigurationV2State({
    this.bucket,
    this.corsRules,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<BucketCorsConfigurationV2CorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<BucketCorsConfigurationV2CorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
    };
  }

  factory BucketCorsConfigurationV2State.fromMap(Map<String, dynamic> map) {
    return BucketCorsConfigurationV2State(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      corsRules: map['corsRules'] == null ? null : (pulumi.Input.decodeList<BucketCorsConfigurationV2CorsRule>(map['corsRules'], (value) => BucketCorsConfigurationV2CorsRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : (map['expectedBucketOwner'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

