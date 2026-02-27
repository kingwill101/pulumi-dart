// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for QueryLog.
class QueryLogArgs {
  /// CloudWatch log group ARN to send query logs.
  final pulumi.Input<String> cloudwatchLogGroupArn;

  /// Route53 hosted zone ID to enable query logs.
  final pulumi.Input<String> zoneId;

  QueryLogArgs({
    required this.cloudwatchLogGroupArn,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudwatchLogGroupArn'] = cloudwatchLogGroupArn;
    map['zoneId'] = zoneId;
    return map;
  }

  factory QueryLogArgs.fromMap(Map<String, dynamic> map) {
    return QueryLogArgs(
      cloudwatchLogGroupArn:
          pulumi.Input.asInput<String>(map['cloudwatchLogGroupArn']),
      zoneId: pulumi.Input.asInput<String>(map['zoneId']),
    );
  }
}
