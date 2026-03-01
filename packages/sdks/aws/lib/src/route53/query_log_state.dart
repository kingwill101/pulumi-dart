// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QueryLog resources.
class QueryLogState {
  /// The Amazon Resource Name (ARN) of the Query Logging Config.
  final pulumi.Input<String>? arn;
  /// CloudWatch log group ARN to send query logs.
  final pulumi.Input<String>? cloudwatchLogGroupArn;
  /// Route53 hosted zone ID to enable query logs.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [QueryLogState].
  /// [arn] The Amazon Resource Name (ARN) of the Query Logging Config.
  /// [cloudwatchLogGroupArn] CloudWatch log group ARN to send query logs.
  /// [zoneId] Route53 hosted zone ID to enable query logs.
  QueryLogState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? cloudwatchLogGroupArn,
    pulumi.Output<String>? zoneId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cloudwatchLogGroupArn = pulumi.Input.asOptionalInput<String>(cloudwatchLogGroupArn),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cloudwatchLogGroupArn': ?cloudwatchLogGroupArn,
      'zoneId': ?zoneId,
    };
  }

  factory QueryLogState.fromMap(Map<String, dynamic> map) {
    return QueryLogState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cloudwatchLogGroupArn: map['cloudwatchLogGroupArn'] == null ? null : pulumi.Output.create<String>(map['cloudwatchLogGroupArn'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

