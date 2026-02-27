// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBucketReplicationConfiguration.
class GetBucketReplicationConfigurationArgs {
  /// The name of the bucket to get the replication configuration for.
  final pulumi.Input<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetBucketReplicationConfigurationArgs({
    required this.bucket,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetBucketReplicationConfigurationArgs.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
