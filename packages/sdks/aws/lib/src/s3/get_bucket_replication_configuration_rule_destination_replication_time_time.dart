// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime {
  /// Time in minutes.
  final pulumi.Input<int> minutes;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime].
  /// [minutes] Time in minutes.
  const GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': minutes,
    };
  }

  factory GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime(
      minutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minutes'])),
    );
  }
}
