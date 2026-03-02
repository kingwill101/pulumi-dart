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
  DistributionOrderedCacheBehaviorLambdaFunctionAssociation({
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
      eventType: (map['eventType'] as String).input(),
      includeBody: map['includeBody'] == null ? null : (map['includeBody'] as bool).input(),
      lambdaArn: (map['lambdaArn'] as String).input(),
    );
  }
}

