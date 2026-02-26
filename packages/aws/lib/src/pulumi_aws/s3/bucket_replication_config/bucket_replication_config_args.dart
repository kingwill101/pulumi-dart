// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_replication_config_rule/bucket_replication_config_rule.dart';

/// The set of arguments for BucketReplicationConfig.
class BucketReplicationConfigArgs {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  final Input<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  final Input<String> role;

  /// List of configuration blocks describing the rules managing the replication. See below.
  ///
  /// > **NOTE:** Replication to multiple destination buckets requires that <span pulumi-lang-nodejs="`priority`" pulumi-lang-dotnet="`Priority`" pulumi-lang-go="`priority`" pulumi-lang-python="`priority`" pulumi-lang-yaml="`priority`" pulumi-lang-java="`priority`">`priority`</span> is specified in the <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> object. If the corresponding rule requires no filter, an empty configuration block `filter {}` must be specified.
  ///
  /// > **NOTE:** Amazon S3's latest version of the replication configuration is V2, which includes the <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> attribute for replication rules.
  ///
  /// > **NOTE:** The <span pulumi-lang-nodejs="`existingObjectReplication`" pulumi-lang-dotnet="`ExistingObjectReplication`" pulumi-lang-go="`existingObjectReplication`" pulumi-lang-python="`existing_object_replication`" pulumi-lang-yaml="`existingObjectReplication`" pulumi-lang-java="`existingObjectReplication`">`existing_object_replication`</span> parameter is not supported by Amazon S3 at this time and should not be included in your <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> configurations. Specifying this parameter will result in `MalformedXML` errors.
  /// To replicate existing objects, please refer to the [Replicating existing objects with S3 Batch Replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-batch-replication-batch.html) documentation in the Amazon S3 User Guide.
  final Input<List<BucketReplicationConfigRule>> rules;

  /// Token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's "Object Lock token".
  /// For more details, see [Using S3 Object Lock with replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-managing-replication).
  final Input<String>? token;

  BucketReplicationConfigArgs({
    required this.bucket,
    this.region,
    required this.role,
    required this.rules,
    this.token,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    map['rules'] = Input.mapInputValue<List<BucketReplicationConfigRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) =>
            Input.encodeList<BucketReplicationConfigRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final tokenValue = token;
    if (tokenValue != null) {
      map['token'] = tokenValue;
    }
    return map;
  }

  factory BucketReplicationConfigArgs.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigArgs(
      bucket: Input.asInput<String>(map['bucket']),
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asInput<String>(map['role']),
      rules: Input.asInput<List<BucketReplicationConfigRule>>(map['rules']),
      token: Input.asOptionalInput<String>(map['token']),
    );
  }
}
