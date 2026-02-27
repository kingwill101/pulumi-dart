// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_cors_configuration_cors_rule/bucket_cors_configuration_cors_rule.dart';

/// The set of arguments for BucketCorsConfiguration.
class BucketCorsConfigurationArgs {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;

  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  final pulumi.Input<List<BucketCorsConfigurationCorsRule>> corsRules;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  BucketCorsConfigurationArgs({
    required this.bucket,
    required this.corsRules,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['corsRules'] = pulumi.Input.mapInputValue<
            List<BucketCorsConfigurationCorsRule>, List<Map<String, dynamic>>>(
        corsRules,
        (value) => pulumi.Input.encodeList<BucketCorsConfigurationCorsRule,
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
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      corsRules: pulumi.Input.asInput<List<BucketCorsConfigurationCorsRule>>(
          map['corsRules']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
