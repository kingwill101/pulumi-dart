// ignore_for_file: unused_element, unnecessary_cast


class DistributionDefaultCacheBehaviorLambdaFunctionAssociation {
  /// Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  final String eventType;
  /// When set to true it exposes the request body to the lambda function. Defaults to false. Valid values: `true`, `false`.
  final bool? includeBody;
  /// ARN of the Lambda function.
  final String lambdaArn;

  /// Creates a new [DistributionDefaultCacheBehaviorLambdaFunctionAssociation].
  /// [eventType] Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  /// [includeBody] When set to true it exposes the request body to the lambda function. Defaults to false. Valid values: `true`, `false`.
  /// [lambdaArn] ARN of the Lambda function.
  DistributionDefaultCacheBehaviorLambdaFunctionAssociation({
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

  factory DistributionDefaultCacheBehaviorLambdaFunctionAssociation.fromMap(Map<String, dynamic> map) {
    return DistributionDefaultCacheBehaviorLambdaFunctionAssociation(
      eventType: map['eventType'] as String,
      includeBody: map['includeBody'] == null ? null : map['includeBody'] as bool,
      lambdaArn: map['lambdaArn'] as String,
    );
  }
}

