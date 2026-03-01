// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_configuration_v2_rule.dart';
import 'bucket_lifecycle_configuration_v2_timeouts.dart';

/// Input properties used for looking up and filtering BucketLifecycleConfigurationV2 resources.
class BucketLifecycleConfigurationV2State {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  final pulumi.Input<String>? bucket;
  /// Account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of configuration blocks describing the rules managing the replication. See below.
  final pulumi.Input<List<BucketLifecycleConfigurationV2Rule>>? rules;
  final pulumi.Input<BucketLifecycleConfigurationV2Timeouts>? timeouts;
  /// The default minimum object size behavior applied to the lifecycle configuration. Valid values: `all_storage_classes_128K` (default), `varies_by_storage_class`. To customize the minimum object size for any transition you can add a `filter` that specifies a custom `object_size_greater_than` or `object_size_less_than` value. Custom filters always take precedence over the default transition behavior.
  final pulumi.Input<String>? transitionDefaultMinimumObjectSize;

  /// Creates a new [BucketLifecycleConfigurationV2State].
  /// [bucket] Name of the source S3 bucket you want Amazon S3 to monitor.
  /// [expectedBucketOwner] Account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] List of configuration blocks describing the rules managing the replication. See below.
  /// [timeouts] Optional.
  /// [transitionDefaultMinimumObjectSize] The default minimum object size behavior applied to the lifecycle configuration. Valid values: `all_storage_classes_128K` (default), `varies_by_storage_class`. To customize the minimum object size for any transition you can add a `filter` that specifies a custom `object_size_greater_than` or `object_size_less_than` value. Custom filters always take precedence over the default transition behavior.
  BucketLifecycleConfigurationV2State({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<String>? region,
    pulumi.Output<List<BucketLifecycleConfigurationV2Rule>>? rules,
    pulumi.Output<BucketLifecycleConfigurationV2Timeouts>? timeouts,
    pulumi.Output<String>? transitionDefaultMinimumObjectSize,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<BucketLifecycleConfigurationV2Rule>>(rules),
      timeouts = pulumi.Input.asOptionalInput<BucketLifecycleConfigurationV2Timeouts>(timeouts),
      transitionDefaultMinimumObjectSize = pulumi.Input.asOptionalInput<String>(transitionDefaultMinimumObjectSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleConfigurationV2Rule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketLifecycleConfigurationV2Rule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationV2Timeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transitionDefaultMinimumObjectSize': ?transitionDefaultMinimumObjectSize,
    };
  }

  factory BucketLifecycleConfigurationV2State.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2State(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<BucketLifecycleConfigurationV2Rule>>(pulumi.Input.decodeList<BucketLifecycleConfigurationV2Rule>(map['rules'], (value) => BucketLifecycleConfigurationV2Rule.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<BucketLifecycleConfigurationV2Timeouts>(BucketLifecycleConfigurationV2Timeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      transitionDefaultMinimumObjectSize: map['transitionDefaultMinimumObjectSize'] == null ? null : pulumi.Output.create<String>(map['transitionDefaultMinimumObjectSize'] as String),
    );
  }
}

