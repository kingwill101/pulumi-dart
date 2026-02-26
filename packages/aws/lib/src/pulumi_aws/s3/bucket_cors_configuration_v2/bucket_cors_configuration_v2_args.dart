// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_cors_configuration_v2_cors_rule/bucket_cors_configuration_v2_cors_rule.dart';

/// The set of arguments for BucketCorsConfigurationV2.
class BucketCorsConfigurationV2Args {
  /// Name of the bucket.
  final Input<String> bucket;

  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  final Input<List<BucketCorsConfigurationV2CorsRule>> corsRules;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BucketCorsConfigurationV2Args({
    required this.bucket,
    required this.corsRules,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['corsRules'] = Input.mapInputValue<
            List<BucketCorsConfigurationV2CorsRule>,
            List<Map<String, dynamic>>>(
        corsRules,
        (value) => Input.encodeList<BucketCorsConfigurationV2CorsRule,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BucketCorsConfigurationV2Args.fromMap(Map<String, dynamic> map) {
    return BucketCorsConfigurationV2Args(
      bucket: Input.asInput<String>(map['bucket']),
      corsRules: Input.asInput<List<BucketCorsConfigurationV2CorsRule>>(
          map['corsRules']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
