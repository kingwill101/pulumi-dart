// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_configuration_rule_s3_control.dart';

/// Input properties used for looking up and filtering BucketLifecycleConfiguration resources.
class BucketLifecycleConfigurationS3ControlState {
  /// Amazon Resource Name (ARN) of the bucket.
  final pulumi.Input<String>? bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block(s) containing lifecycle rules for the bucket.
  final pulumi.Input<List<BucketLifecycleConfigurationRuleS3Control>>? rules;

  /// Creates a new [BucketLifecycleConfigurationS3ControlState].
  /// [bucket] Amazon Resource Name (ARN) of the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] Configuration block(s) containing lifecycle rules for the bucket.
  BucketLifecycleConfigurationS3ControlState({
    this.bucket,
    this.region,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'region': ?region,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketLifecycleConfigurationRuleS3Control>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  BucketLifecycleConfigurationRuleS3Control,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BucketLifecycleConfigurationS3ControlState.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketLifecycleConfigurationS3ControlState(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BucketLifecycleConfigurationRuleS3Control>(
            guardedValue,
            (value) => BucketLifecycleConfigurationRuleS3Control.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
