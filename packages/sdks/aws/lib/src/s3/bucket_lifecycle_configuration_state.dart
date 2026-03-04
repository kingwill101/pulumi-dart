// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_configuration_rule.dart';
import 'bucket_lifecycle_configuration_timeouts.dart';

/// Input properties used for looking up and filtering BucketLifecycleConfiguration resources.
class BucketLifecycleConfigurationState {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  final pulumi.Input<String>? bucket;

  /// Account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of configuration blocks describing the rules managing the replication. See below.
  final pulumi.Input<List<BucketLifecycleConfigurationRule>>? rules;
  final pulumi.Input<BucketLifecycleConfigurationTimeouts>? timeouts;

  /// The default minimum object size behavior applied to the lifecycle configuration. Valid values: `all_storage_classes_128K` (default), `varies_by_storage_class`. To customize the minimum object size for any transition you can add a `filter` that specifies a custom `object_size_greater_than` or `object_size_less_than` value. Custom filters always take precedence over the default transition behavior.
  final pulumi.Input<String>? transitionDefaultMinimumObjectSize;

  /// Creates a new [BucketLifecycleConfigurationState].
  /// [bucket] Name of the source S3 bucket you want Amazon S3 to monitor.
  /// [expectedBucketOwner] Account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] List of configuration blocks describing the rules managing the replication. See below.
  /// [timeouts] Optional.
  /// [transitionDefaultMinimumObjectSize] The default minimum object size behavior applied to the lifecycle configuration. Valid values: `all_storage_classes_128K` (default), `varies_by_storage_class`. To customize the minimum object size for any transition you can add a `filter` that specifies a custom `object_size_greater_than` or `object_size_less_than` value. Custom filters always take precedence over the default transition behavior.
  BucketLifecycleConfigurationState({
    this.bucket,
    this.expectedBucketOwner,
    this.region,
    this.rules,
    this.timeouts,
    this.transitionDefaultMinimumObjectSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketLifecycleConfigurationRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  BucketLifecycleConfigurationRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            BucketLifecycleConfigurationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'transitionDefaultMinimumObjectSize': ?transitionDefaultMinimumObjectSize,
    };
  }

  factory BucketLifecycleConfigurationState.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationState(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expectedBucketOwner: (() {
        final guardedValue = map['expectedBucketOwner'];
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
          pulumi.Input.decodeList<BucketLifecycleConfigurationRule>(
            guardedValue,
            (value) => BucketLifecycleConfigurationRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketLifecycleConfigurationTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      transitionDefaultMinimumObjectSize: (() {
        final guardedValue = map['transitionDefaultMinimumObjectSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
