// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LambdaFunctionAssociation
class LambdaFunctionAssociation {
  /// Specifies the event type that triggers a Lambda@Edge function invocation. You can specify the following values:  +   ``viewer-request``: The function executes when CloudFront receives a request from a viewer and before it checks to see whether the requested object is in the edge cache.  +   ``origin-request``: The function executes only when CloudFront sends a request to your origin. When the requested object is in the edge cache, the function doesn't execute.  +   ``origin-response``: The function executes after CloudFront receives a response from the origin and before it caches the object in the response. When the requested object is in the edge cache, the function doesn't execute.  +   ``viewer-response``: The function executes before CloudFront returns the requested object to the viewer. The function executes regardless of whether the object was already in the edge cache. If the origin returns an HTTP status code other than HTTP 200 (OK), the function doesn't execute.
  final pulumi.Input<String?>? eventType;
  /// A flag that allows a Lambda@Edge function to have read access to the body content. For more information, see [Accessing the Request Body by Choosing the Include Body Option](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html) in the Amazon CloudFront Developer Guide.
  final pulumi.Input<bool?>? includeBody;
  /// The ARN of the Lambda@Edge function. You must specify the ARN of a function version; you can't specify an alias or $LATEST.
  final pulumi.Input<String?>? lambdaFunctionARN;

  /// Creates a new [LambdaFunctionAssociation].
  /// [eventType] Specifies the event type that triggers a Lambda@Edge function invocation. You can specify the following values:  +   ``viewer-request``: The function executes when CloudFront receives a request from a viewer and before it checks to see whether the requested object is in the edge cache.  +   ``origin-request``: The function executes only when CloudFront sends a request to your origin. When the requested object is in the edge cache, the function doesn't execute.  +   ``origin-response``: The function executes after CloudFront receives a response from the origin and before it caches the object in the response. When the requested object is in the edge cache, the function doesn't execute.  +   ``viewer-response``: The function executes before CloudFront returns the requested object to the viewer. The function executes regardless of whether the object was already in the edge cache. If the origin returns an HTTP status code other than HTTP 200 (OK), the function doesn't execute.
  /// [includeBody] A flag that allows a Lambda@Edge function to have read access to the body content. For more information, see [Accessing the Request Body by Choosing the Include Body Option](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html) in the Amazon CloudFront Developer Guide.
  /// [lambdaFunctionARN] The ARN of the Lambda@Edge function. You must specify the ARN of a function version; you can't specify an alias or $LATEST.
  const LambdaFunctionAssociation({
    this.eventType,
    this.includeBody,
    this.lambdaFunctionARN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': ?eventType,
      'includeBody': ?includeBody,
      'lambdaFunctionARN': ?lambdaFunctionARN,
    };
  }

  factory LambdaFunctionAssociation.fromMap(Map<String, dynamic> map) {
    return LambdaFunctionAssociation(
      eventType: (() { final guardedValue = map['eventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeBody: (() { final guardedValue = map['includeBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lambdaFunctionARN: (() { final guardedValue = map['lambdaFunctionARN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
