// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_lifecycle_configuration_v2_rule/bucket_lifecycle_configuration_v2_rule.dart';
import '../bucket_lifecycle_configuration_v2_timeouts/bucket_lifecycle_configuration_v2_timeouts.dart';

/// The set of arguments for BucketLifecycleConfigurationV2.
class BucketLifecycleConfigurationV2Args {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  final Input<String> bucket;

  /// Account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  final Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of configuration blocks describing the rules managing the replication. See below.
  final Input<List<BucketLifecycleConfigurationV2Rule>>? rules;
  final Input<BucketLifecycleConfigurationV2Timeouts>? timeouts;

  /// The default minimum object size behavior applied to the lifecycle configuration. Valid values: `all_storage_classes_128K` (default), `varies_by_storage_class`. To customize the minimum object size for any transition you can add a `filter` that specifies a custom `object_size_greater_than` or `object_size_less_than` value. Custom filters always take precedence over the default transition behavior.
  final Input<String>? transitionDefaultMinimumObjectSize;

  BucketLifecycleConfigurationV2Args({
    required this.bucket,
    this.expectedBucketOwner,
    this.region,
    this.rules,
    this.timeouts,
    this.transitionDefaultMinimumObjectSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.mapOptionalInputValue<
              List<BucketLifecycleConfigurationV2Rule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => Input.encodeList<BucketLifecycleConfigurationV2Rule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          BucketLifecycleConfigurationV2Timeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final transitionDefaultMinimumObjectSizeValue =
        transitionDefaultMinimumObjectSize;
    if (transitionDefaultMinimumObjectSizeValue != null) {
      map['transitionDefaultMinimumObjectSize'] =
          transitionDefaultMinimumObjectSizeValue;
    }
    return map;
  }

  factory BucketLifecycleConfigurationV2Args.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2Args(
      bucket: Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: Input.asOptionalInput<String>(map['region']),
      rules: Input.asOptionalInput<List<BucketLifecycleConfigurationV2Rule>>(
          map['rules']),
      timeouts: Input.asOptionalInput<BucketLifecycleConfigurationV2Timeouts>(
          map['timeouts']),
      transitionDefaultMinimumObjectSize: Input.asOptionalInput<String>(
          map['transitionDefaultMinimumObjectSize']),
    );
  }
}
