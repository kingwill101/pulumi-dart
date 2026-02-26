// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionCacheBehaviorLambdaFunctionAssociation {
  /// Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  final String eventType;

  /// When set to true, the request body is exposed to the Lambda function. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includeBody;

  /// ARN of the Lambda function.
  final String lambdaFunctionArn;

  MultitenantDistributionCacheBehaviorLambdaFunctionAssociation({
    required this.eventType,
    this.includeBody,
    required this.lambdaFunctionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventType'] = eventType;
    final includeBodyValue = includeBody;
    if (includeBodyValue != null) {
      map['includeBody'] = includeBodyValue;
    }
    map['lambdaFunctionArn'] = lambdaFunctionArn;
    return map;
  }

  factory MultitenantDistributionCacheBehaviorLambdaFunctionAssociation.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionCacheBehaviorLambdaFunctionAssociation(
      eventType: map['eventType'] as String,
      includeBody:
          map['includeBody'] == null ? null : map['includeBody'] as bool,
      lambdaFunctionArn: map['lambdaFunctionArn'] as String,
    );
  }
}
