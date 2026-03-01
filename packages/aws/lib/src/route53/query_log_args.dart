// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_query_log_query_log_args_doc}
/// The set of arguments for QueryLog.
/// {@endtemplate}
/// {@macro pulumi_route53_query_log_query_log_args_doc}
class QueryLogArgs {
  /// CloudWatch log group ARN to send query logs.
  final pulumi.Input<String> cloudwatchLogGroupArn;

  /// Route53 hosted zone ID to enable query logs.
  final pulumi.Input<String> zoneId;

  /// Creates a new [QueryLogArgs].
  /// [cloudwatchLogGroupArn] CloudWatch log group ARN to send query logs.
  /// [zoneId] Route53 hosted zone ID to enable query logs.
  QueryLogArgs({required String cloudwatchLogGroupArn, required String zoneId})
    : cloudwatchLogGroupArn = pulumi.Input.asInput<String>(
        cloudwatchLogGroupArn,
      ),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogGroupArn': cloudwatchLogGroupArn,
      'zoneId': zoneId,
    };
  }

  factory QueryLogArgs.fromMap(Map<String, dynamic> map) {
    return QueryLogArgs(
      cloudwatchLogGroupArn: map['cloudwatchLogGroupArn'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}
