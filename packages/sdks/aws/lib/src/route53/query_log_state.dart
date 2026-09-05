// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QueryLog resources.
class QueryLogState {
  /// ARN of the Query Logging Config.
  final pulumi.Input<String?>? arn;
  /// CloudWatch log group ARN to send query logs.
  final pulumi.Input<String?>? cloudwatchLogGroupArn;
  /// Route53 hosted zone ID to enable query logs.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [QueryLogState].
  /// [arn] ARN of the Query Logging Config.
  /// [cloudwatchLogGroupArn] CloudWatch log group ARN to send query logs.
  /// [zoneId] Route53 hosted zone ID to enable query logs.
  const QueryLogState({
    this.arn,
    this.cloudwatchLogGroupArn,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cloudwatchLogGroupArn': ?cloudwatchLogGroupArn,
      'zoneId': ?zoneId,
    };
  }

  factory QueryLogState.fromMap(Map<String, dynamic> map) {
    return QueryLogState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudwatchLogGroupArn: (() { final guardedValue = map['cloudwatchLogGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
