// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation {
  /// Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  final String eventType;

  /// When set to true, the request body is exposed to the Lambda function. Default: `false`.
  final bool? includeBody;

  /// ARN of the Lambda function.
  final String lambdaFunctionArn;

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

  factory MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation(
      eventType: map['eventType'] as String,
      includeBody: map['includeBody'] == null
          ? null
          : map['includeBody'] as bool,
      lambdaFunctionArn: map['lambdaFunctionArn'] as String,
    );
  }
}
