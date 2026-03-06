// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_bucket_replication_configuration_get_bucket_replication_configuration_args_doc}
/// Arguments for getBucketReplicationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_get_bucket_replication_configuration_get_bucket_replication_configuration_args_doc}
class GetBucketReplicationConfigurationArgs {
  /// The name of the bucket to get the replication configuration for.
  final pulumi.Input<String> bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetBucketReplicationConfigurationArgs].
  /// [bucket] The name of the bucket to get the replication configuration for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetBucketReplicationConfigurationArgs({
    required this.bucket,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'region': ?region,
    };
  }

  factory GetBucketReplicationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

