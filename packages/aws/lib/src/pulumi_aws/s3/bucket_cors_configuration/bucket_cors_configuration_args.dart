// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_cors_configuration_cors_rule/bucket_cors_configuration_cors_rule.dart';

/// The set of arguments for BucketCorsConfiguration.
class BucketCorsConfigurationArgs {
  /// Name of the bucket.
  final Input<String> bucket;

  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  final Input<List<BucketCorsConfigurationCorsRule>> corsRules;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BucketCorsConfigurationArgs({
    required this.bucket,
    required this.corsRules,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['corsRules'] = Input.mapInputValue<
            List<BucketCorsConfigurationCorsRule>, List<Map<String, dynamic>>>(
        corsRules,
        (value) => Input.encodeList<BucketCorsConfigurationCorsRule,
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

  factory BucketCorsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketCorsConfigurationArgs(
      bucket: Input.asInput<String>(map['bucket']),
      corsRules: Input.asInput<List<BucketCorsConfigurationCorsRule>>(
          map['corsRules']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
