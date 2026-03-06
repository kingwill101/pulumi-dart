// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionOrderedCacheBehaviorLambdaFunctionAssociation {
  /// Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  final pulumi.Input<String> eventType;
  /// When set to true it exposes the request body to the lambda function. Defaults to false. Valid values: `true`, `false`.
  final pulumi.Input<bool>? includeBody;
  /// ARN of the Lambda function.
  final pulumi.Input<String> lambdaArn;

  /// Creates a new [DistributionOrderedCacheBehaviorLambdaFunctionAssociation].
  /// [eventType] Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  /// [includeBody] When set to true it exposes the request body to the lambda function. Defaults to false. Valid values: `true`, `false`.
  /// [lambdaArn] ARN of the Lambda function.
  const DistributionOrderedCacheBehaviorLambdaFunctionAssociation({
    required this.eventType,
    this.includeBody,
    required this.lambdaArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': eventType,
      'includeBody': ?includeBody,
      'lambdaArn': lambdaArn,
    };
  }

  factory DistributionOrderedCacheBehaviorLambdaFunctionAssociation.fromMap(Map<String, dynamic> map) {
    return DistributionOrderedCacheBehaviorLambdaFunctionAssociation(
      eventType: pulumi.Input.fromValue(map['eventType'] as String),
      includeBody: (() { final guardedValue = map['includeBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lambdaArn: pulumi.Input.fromValue(map['lambdaArn'] as String),
    );
  }
}

