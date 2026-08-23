// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_destination_replication_time_time.dart';

class GetBucketReplicationConfigurationRuleDestinationReplicationTime {
  /// Whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
  final pulumi.Input<String> status;
  /// Configuration block that specifies the time by which replication should be complete for all objects and operations on objects. See `time` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime>> times;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationReplicationTime].
  /// [status] Whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
  /// [times] Configuration block that specifies the time by which replication should be complete for all objects and operations on objects. See `time` Block below.
  const GetBucketReplicationConfigurationRuleDestinationReplicationTime({
    required this.status,
    required this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'times': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime>, List<Map<String, dynamic>>>(times, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBucketReplicationConfigurationRuleDestinationReplicationTime.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationReplicationTime(
      status: pulumi.Input.fromValue(map['status'] as String),
      times: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime>(map['times']!, (value) => GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
