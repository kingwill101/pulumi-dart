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
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<String>? region,
    pulumi.Output<List<BucketLifecycleConfigurationRule>>? rules,
    pulumi.Output<BucketLifecycleConfigurationTimeouts>? timeouts,
    pulumi.Output<String>? transitionDefaultMinimumObjectSize,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<BucketLifecycleConfigurationRule>>(rules),
      timeouts = pulumi.Input.asOptionalInput<BucketLifecycleConfigurationTimeouts>(timeouts),
      transitionDefaultMinimumObjectSize = pulumi.Input.asOptionalInput<String>(transitionDefaultMinimumObjectSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleConfigurationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketLifecycleConfigurationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transitionDefaultMinimumObjectSize': ?transitionDefaultMinimumObjectSize,
    };
  }

  factory BucketLifecycleConfigurationState.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<BucketLifecycleConfigurationRule>>(pulumi.Input.decodeList<BucketLifecycleConfigurationRule>(map['rules'], (value) => BucketLifecycleConfigurationRule.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<BucketLifecycleConfigurationTimeouts>(BucketLifecycleConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      transitionDefaultMinimumObjectSize: map['transitionDefaultMinimumObjectSize'] == null ? null : pulumi.Output.create<String>(map['transitionDefaultMinimumObjectSize'] as String),
    );
  }
}

