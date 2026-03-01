// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_destination_metric_event_threshold.dart';

class GetBucketReplicationConfigurationRuleDestinationMetric {
  final List<GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold> eventThresholds;
  final String status;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationMetric].
  /// [eventThresholds] Required.
  /// [status] Required.
  GetBucketReplicationConfigurationRuleDestinationMetric({
    required this.eventThresholds,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventThresholds': pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold, Map<String, dynamic>>(eventThresholds, (value) => value.toMap()),
      'status': status,
    };
  }

  factory GetBucketReplicationConfigurationRuleDestinationMetric.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationMetric(
      eventThresholds: pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold>(map['eventThresholds'], (value) => GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
    );
  }
}

