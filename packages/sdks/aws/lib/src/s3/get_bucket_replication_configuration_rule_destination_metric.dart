// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_destination_metric_event_threshold.dart';

class GetBucketReplicationConfigurationRuleDestinationMetric {
  /// Configuration block that specifies the time threshold for emitting the `s3:Replication:OperationMissedThreshold` event. See `eventThreshold` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold>> eventThresholds;
  /// Whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in KMS.
  final pulumi.Input<String> status;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationMetric].
  /// [eventThresholds] Configuration block that specifies the time threshold for emitting the `s3:Replication:OperationMissedThreshold` event. See `eventThreshold` Block below.
  /// [status] Whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in KMS.
  const GetBucketReplicationConfigurationRuleDestinationMetric({
    required this.eventThresholds,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventThresholds': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold>, List<Map<String, dynamic>>>(eventThresholds, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
    };
  }

  factory GetBucketReplicationConfigurationRuleDestinationMetric.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationMetric(
      eventThresholds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold>(map['eventThresholds']!, (value) => GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
