// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigurationRuleDestinationMetrics {
  /// Threshold within which objects are to be replicated. The only valid value is `15`.
  final pulumi.Input<int>? minutes;
  /// Status of replication metrics. Either `Enabled` or `Disabled`.
  final pulumi.Input<String>? status;

  /// Creates a new [BucketReplicationConfigurationRuleDestinationMetrics].
  /// [minutes] Threshold within which objects are to be replicated. The only valid value is `15`.
  /// [status] Status of replication metrics. Either `Enabled` or `Disabled`.
  BucketReplicationConfigurationRuleDestinationMetrics({
    this.minutes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': ?minutes,
      'status': ?status,
    };
  }

  factory BucketReplicationConfigurationRuleDestinationMetrics.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigurationRuleDestinationMetrics(
      minutes: map['minutes'] == null ? null : (map['minutes'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

