// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigRuleDestinationMetricsEventThreshold {
  /// Time in minutes. Valid values: `15`.
  final pulumi.Input<int> minutes;

  /// Creates a new [BucketReplicationConfigRuleDestinationMetricsEventThreshold].
  /// [minutes] Time in minutes. Valid values: `15`.
  BucketReplicationConfigRuleDestinationMetricsEventThreshold({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': minutes,
    };
  }

  factory BucketReplicationConfigRuleDestinationMetricsEventThreshold.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationMetricsEventThreshold(
      minutes: pulumi.Input.fromValue(map['minutes'] as int),
    );
  }
}

