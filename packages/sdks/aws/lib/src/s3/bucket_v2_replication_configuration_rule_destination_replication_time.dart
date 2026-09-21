// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketV2ReplicationConfigurationRuleDestinationReplicationTime {
  /// Threshold within which objects are to be replicated. The only valid value is `15`.
  final pulumi.Input<int?>? minutes;
  /// Status of RTC. Either `Enabled` or `Disabled`.
  final pulumi.Input<String?>? status;

  /// Creates a new [BucketV2ReplicationConfigurationRuleDestinationReplicationTime].
  /// [minutes] Threshold within which objects are to be replicated. The only valid value is `15`.
  /// [status] Status of RTC. Either `Enabled` or `Disabled`.
  const BucketV2ReplicationConfigurationRuleDestinationReplicationTime({
    this.minutes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': ?minutes,
      'status': ?status,
    };
  }

  factory BucketV2ReplicationConfigurationRuleDestinationReplicationTime.fromMap(Map<String, dynamic> map) {
    return BucketV2ReplicationConfigurationRuleDestinationReplicationTime(
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
