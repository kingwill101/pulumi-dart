// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_lifecycle_configuration_rule/bucket_lifecycle_configuration_rule2.dart';

/// The set of arguments for BucketLifecycleConfiguration.
class BucketLifecycleConfigurationArgs2 {
  /// Amazon Resource Name (ARN) of the bucket.
  final Input<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block(s) containing lifecycle rules for the bucket.
  final Input<List<BucketLifecycleConfigurationRule2>> rules;

  BucketLifecycleConfigurationArgs2({
    required this.bucket,
    this.region,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rules'] = Input.mapInputValue<List<BucketLifecycleConfigurationRule2>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => Input.encodeList<BucketLifecycleConfigurationRule2,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory BucketLifecycleConfigurationArgs2.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationArgs2(
      bucket: Input.asInput<String>(map['bucket']),
      region: Input.asOptionalInput<String>(map['region']),
      rules:
          Input.asInput<List<BucketLifecycleConfigurationRule2>>(map['rules']),
    );
  }
}
