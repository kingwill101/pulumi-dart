// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_config_rule.dart';

/// Input properties used for looking up and filtering BucketReplicationConfig resources.
class BucketReplicationConfigState {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  final pulumi.Input<String?>? bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  final pulumi.Input<String?>? role;
  /// List of configuration blocks describing the rules managing the replication. See below.
  final pulumi.Input<List<BucketReplicationConfigRule>?>? rules;
  /// Token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's "Object Lock token". For more details, see [Using S3 Object Lock with replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-managing-replication).
  final pulumi.Input<String?>? token;

  /// Creates a new [BucketReplicationConfigState].
  /// [bucket] Name of the source S3 bucket you want Amazon S3 to monitor.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  /// [rules] List of configuration blocks describing the rules managing the replication. See below.
  /// [token] Token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's "Object Lock token". For more details, see [Using S3 Object Lock with replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-managing-replication).
  const BucketReplicationConfigState({
    this.bucket,
    this.region,
    this.role,
    this.rules,
    this.token,
  });

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
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketReplicationConfigRule>(guardedValue, (value) => BucketReplicationConfigRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
