// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold {
  /// Time in minutes.
  final pulumi.Input<int> minutes;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold].
  /// [minutes] Time in minutes.
  const GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': minutes,
    };
  }

  factory GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold(
      minutes: pulumi.Input.fromValue((map['minutes'] as num).toInt()),
    );
  }
}
