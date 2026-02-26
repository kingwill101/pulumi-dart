// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_bucket_replication_configuration_rule_destination_metric_event_threshold/get_bucket_replication_configuration_rule_destination_metric_event_threshold.dart';

class GetBucketReplicationConfigurationRuleDestinationMetric {
  final List<
          GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold>
      eventThresholds;
  final String status;

  GetBucketReplicationConfigurationRuleDestinationMetric({
    required this.eventThresholds,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventThresholds'] = Input.encodeList<
        GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold,
        Map<String, dynamic>>(eventThresholds, (value) => value.toMap());
    map['status'] = status;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleDestinationMetric.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationMetric(
      eventThresholds: Input.decodeList<
              GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold>(
          map['eventThresholds'],
          (value) =>
              GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold
                  .fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
    );
  }
}
