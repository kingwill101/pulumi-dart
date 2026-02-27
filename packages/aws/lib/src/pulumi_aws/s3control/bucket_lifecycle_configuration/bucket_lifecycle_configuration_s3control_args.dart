// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_lifecycle_configuration_rule/bucket_lifecycle_configuration_rule_s3control.dart';

/// The set of arguments for BucketLifecycleConfiguration.
class BucketLifecycleConfigurationS3controlArgs {
  /// Amazon Resource Name (ARN) of the bucket.
  final pulumi.Input<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block(s) containing lifecycle rules for the bucket.
  final pulumi.Input<List<BucketLifecycleConfigurationRuleS3control>> rules;

  BucketLifecycleConfigurationS3controlArgs({
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
    map['rules'] = pulumi.Input.mapInputValue<
            List<BucketLifecycleConfigurationRuleS3control>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => pulumi.Input.encodeList<
            BucketLifecycleConfigurationRuleS3control,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory BucketLifecycleConfigurationS3controlArgs.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationS3controlArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rules:
          pulumi.Input.asInput<List<BucketLifecycleConfigurationRuleS3control>>(
              map['rules']),
    );
  }
}
