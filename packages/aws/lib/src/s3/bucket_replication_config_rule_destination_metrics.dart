// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_replication_config_rule_destination_metrics_event_threshold.dart';

class BucketReplicationConfigRuleDestinationMetrics {
  /// Configuration block that specifies the time threshold for emitting the `s3:Replication:OperationMissedThreshold` event. See below.
  final BucketReplicationConfigRuleDestinationMetricsEventThreshold?
  eventThreshold;

  /// Status of the Destination Metrics. Either `"Enabled"` or `"Disabled"`.
  final String status;

  /// Creates a new [BucketReplicationConfigRuleDestinationMetrics].
  /// [eventThreshold] Configuration block that specifies the time threshold for emitting the `s3:Replication:OperationMissedThreshold` event. See below.
  /// [status] Status of the Destination Metrics. Either `"Enabled"` or `"Disabled"`.
  BucketReplicationConfigRuleDestinationMetrics({
    this.eventThreshold,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventThreshold': ?eventThreshold == null
          ? null
          : eventThreshold!.toMap(),
      'status': status,
    };
  }

  factory BucketReplicationConfigRuleDestinationMetrics.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketReplicationConfigRuleDestinationMetrics(
      eventThreshold: map['eventThreshold'] == null
          ? null
          : BucketReplicationConfigRuleDestinationMetricsEventThreshold.fromMap(
              (map['eventThreshold'] as Map).cast<String, dynamic>(),
            ),
      status: map['status'] as String,
    );
  }
}
