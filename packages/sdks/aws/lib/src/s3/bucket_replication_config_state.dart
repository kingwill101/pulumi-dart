// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_config_rule.dart';

/// Input properties used for looking up and filtering BucketReplicationConfig resources.
class BucketReplicationConfigState {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  final pulumi.Input<String>? bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  final pulumi.Input<String>? role;
  /// List of configuration blocks describing the rules managing the replication. See below.
  ///
  /// > **NOTE:** Replication to multiple destination buckets requires that `priority` is specified in the `rule` object. If the corresponding rule requires no filter, an empty configuration block `filter {}` must be specified.
  ///
  /// > **NOTE:** Amazon S3's latest version of the replication configuration is V2, which includes the `filter` attribute for replication rules.
  ///
  /// > **NOTE:** The `existing_object_replication` parameter is not supported by Amazon S3 at this time and should not be included in your `rule` configurations. Specifying this parameter will result in `MalformedXML` errors.
  /// To replicate existing objects, please refer to the [Replicating existing objects with S3 Batch Replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-batch-replication-batch.html) documentation in the Amazon S3 User Guide.
  final pulumi.Input<List<BucketReplicationConfigRule>>? rules;
  /// Token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's "Object Lock token".
  /// For more details, see [Using S3 Object Lock with replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-managing-replication).
  final pulumi.Input<String>? token;

  /// Creates a new [BucketReplicationConfigState].
  /// [bucket] Name of the source S3 bucket you want Amazon S3 to monitor.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  /// [rules] List of configuration blocks describing the rules managing the replication. See below.
  /// [token] Token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's "Object Lock token".
  BucketReplicationConfigState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
    pulumi.Output<List<BucketReplicationConfigRule>>? rules,
    pulumi.Output<String>? token,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role),
      rules = pulumi.Input.asOptionalInput<List<BucketReplicationConfigRule>>(rules),
      token = pulumi.Input.asOptionalInput<String>(token);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'region': ?region,
      'role': ?role,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<BucketReplicationConfigRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketReplicationConfigRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'token': ?token,
    };
  }

  factory BucketReplicationConfigState.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<BucketReplicationConfigRule>>(pulumi.Input.decodeList<BucketReplicationConfigRule>(map['rules'], (value) => BucketReplicationConfigRule.fromMap((value as Map).cast<String, dynamic>()))),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
    );
  }
}

