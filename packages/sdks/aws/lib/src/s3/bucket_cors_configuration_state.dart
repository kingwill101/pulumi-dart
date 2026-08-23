// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cors_configuration_cors_rule.dart';

/// Input properties used for looking up and filtering BucketCorsConfiguration resources.
class BucketCorsConfigurationState {
  /// Name of the bucket.
  final pulumi.Input<String>? bucket;
  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  final pulumi.Input<List<BucketCorsConfigurationCorsRule>>? corsRules;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketCorsConfigurationState].
  /// [bucket] Name of the bucket.
  /// [corsRules] Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const BucketCorsConfigurationState({
    this.bucket,
    this.corsRules,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<BucketCorsConfigurationCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<BucketCorsConfigurationCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
    };
  }

  factory BucketCorsConfigurationState.fromMap(Map<String, dynamic> map) {
    return BucketCorsConfigurationState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      corsRules: (() { final guardedValue = map['corsRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketCorsConfigurationCorsRule>(guardedValue, (value) => BucketCorsConfigurationCorsRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
