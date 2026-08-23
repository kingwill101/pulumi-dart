// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_config_rule.dart';

/// {@template pulumi_s3_bucket_replication_config_bucket_replication_config_args_doc}
/// The set of arguments for BucketReplicationConfig.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_replication_config_bucket_replication_config_args_doc}
class BucketReplicationConfigArgs {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  final pulumi.Input<String> bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  final pulumi.Input<String> role;
  /// List of configuration blocks describing the rules managing the replication. See below.
  final pulumi.Input<List<BucketReplicationConfigRule>> rules;
  /// Token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's "Object Lock token". For more details, see [Using S3 Object Lock with replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-managing-replication).
  final pulumi.Input<String>? token;

  /// Creates a new [BucketReplicationConfigArgs].
  /// [bucket] Name of the source S3 bucket you want Amazon S3 to monitor.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  /// [rules] List of configuration blocks describing the rules managing the replication. See below.
  /// [token] Token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's "Object Lock token". For more details, see [Using S3 Object Lock with replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-managing-replication).
  const BucketReplicationConfigArgs({
    required this.bucket,
    this.region,
    required this.role,
    required this.rules,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'region': ?region,
      'role': role,
      'rules': pulumi.Input.mapInputValue<List<BucketReplicationConfigRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketReplicationConfigRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'token': ?token,
    };
  }

  factory BucketReplicationConfigArgs.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<BucketReplicationConfigRule>(map['rules']!, (value) => BucketReplicationConfigRule.fromMap((value as Map).cast<String, dynamic>()))),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
