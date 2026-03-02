// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation {
  /// Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  final pulumi.Input<String> eventType;
  /// When set to true, the request body is exposed to the Lambda function. Default: `false`.
  final pulumi.Input<bool>? includeBody;
  /// ARN of the Lambda function.
  final pulumi.Input<String> lambdaFunctionArn;

  /// Creates a new [MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation].
  /// [eventType] Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  /// [includeBody] When set to true, the request body is exposed to the Lambda function. Default: `false`.
  /// [lambdaFunctionArn] ARN of the Lambda function.
  MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation({
    required this.eventType,
    this.includeBody,
    required this.lambdaFunctionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': eventType,
      'includeBody': ?includeBody,
      'lambdaFunctionArn': lambdaFunctionArn,
    };
  }

  factory MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation(
      eventType: (map['eventType'] as String).input(),
      includeBody: map['includeBody'] == null ? null : (map['includeBody'] as bool).input(),
      lambdaFunctionArn: (map['lambdaFunctionArn'] as String).input(),
    );
  }
}

