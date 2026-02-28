// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_configuration_rule_s3_control.dart';

/// {@template pulumi_s3_control_bucket_lifecycle_configuration_bucket_lifecycle_configuration_s3_control_args_doc}
/// The set of arguments for BucketLifecycleConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_control_bucket_lifecycle_configuration_bucket_lifecycle_configuration_s3_control_args_doc}
class BucketLifecycleConfigurationS3ControlArgs {
  /// Amazon Resource Name (ARN) of the bucket.
  final pulumi.Input<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block(s) containing lifecycle rules for the bucket.
  final pulumi.Input<List<BucketLifecycleConfigurationRuleS3Control>> rules;

  /// Creates a new [BucketLifecycleConfigurationS3ControlArgs].
  /// [bucket] Amazon Resource Name (ARN) of the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] Configuration block(s) containing lifecycle rules for the bucket.
  BucketLifecycleConfigurationS3ControlArgs({
    required String bucket,
    String? region,
    required List<BucketLifecycleConfigurationRuleS3Control> rules,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        region = pulumi.Input.asOptionalInput<String>(region),
        rules = pulumi.Input.asInput<
            List<BucketLifecycleConfigurationRuleS3Control>>(rules);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rules'] = pulumi.Input.mapInputValue<
            List<BucketLifecycleConfigurationRuleS3Control>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => pulumi.Input.encodeList<
            BucketLifecycleConfigurationRuleS3Control,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory BucketLifecycleConfigurationS3ControlArgs.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationS3ControlArgs(
      bucket: map['bucket'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: pulumi.Input.decodeList<BucketLifecycleConfigurationRuleS3Control>(
          map['rules'],
          (value) => BucketLifecycleConfigurationRuleS3Control.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
