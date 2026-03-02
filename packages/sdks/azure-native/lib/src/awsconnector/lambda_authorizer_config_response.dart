// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LambdaAuthorizerConfig
class LambdaAuthorizerConfigResponse {
  /// <p>The number of seconds a response should be cached for. The default is 0 seconds, which disables caching. If you don't specify a value for <code>authorizerResultTtlInSeconds</code>, the default value is used. The maximum value is one hour (3600 seconds). The Lambda function can override this by returning a <code>ttlOverride</code> key in its response.</p>
  final pulumi.Input<int>? authorizerResultTtlInSeconds;
  /// <p>The Amazon Resource Name (ARN) of the Lambda function to be called for authorization. This can be a standard Lambda ARN, a version ARN (<code>.../v3</code>), or an alias ARN. </p> <p> <b>Note</b>: This Lambda function must have the following resource-based policy assigned to it. When configuring Lambda authorizers in the console, this is done for you. To use the Command Line Interface (CLI), run the following:</p> <p> <code>aws lambda add-permission --function-name 'arn:aws:lambda:us-east-2:111122223333:function:my-function' --statement-id 'appsync' --principal appsync.amazonaws.com --action lambda:InvokeFunction</code> </p>
  final pulumi.Input<String>? authorizerUri;
  /// <p>A regular expression for validation of tokens before the Lambda function is called.</p>
  final pulumi.Input<String>? identityValidationExpression;

  /// Creates a new [LambdaAuthorizerConfigResponse].
  /// [authorizerResultTtlInSeconds] <p>The number of seconds a response should be cached for. The default is 0 seconds, which disables caching. If you don't specify a value for <code>authorizerResultTtlInSeconds</code>, the default value is used. The maximum value is one hour (3600 seconds). The Lambda function can override this by returning a <code>ttlOverride</code> key in its response.</p>
  /// [authorizerUri] <p>The Amazon Resource Name (ARN) of the Lambda function to be called for authorization. This can be a standard Lambda ARN, a version ARN (<code>.../v3</code>), or an alias ARN. </p> <p> <b>Note</b>: This Lambda function must have the following resource-based policy assigned to it. When configuring Lambda authorizers in the console, this is done for you. To use the Command Line Interface (CLI), run the following:</p> <p> <code>aws lambda add-permission --function-name 'arn:aws:lambda:us-east-2:111122223333:function:my-function' --statement-id 'appsync' --principal appsync.amazonaws.com --action lambda:InvokeFunction</code> </p>
  /// [identityValidationExpression] <p>A regular expression for validation of tokens before the Lambda function is called.</p>
  LambdaAuthorizerConfigResponse({
    this.authorizerResultTtlInSeconds,
    this.authorizerUri,
    this.identityValidationExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerResultTtlInSeconds': ?authorizerResultTtlInSeconds,
      'authorizerUri': ?authorizerUri,
      'identityValidationExpression': ?identityValidationExpression,
    };
  }

  factory LambdaAuthorizerConfigResponse.fromMap(Map<String, dynamic> map) {
    return LambdaAuthorizerConfigResponse(
      authorizerResultTtlInSeconds: map['authorizerResultTtlInSeconds'] == null ? null : (map['authorizerResultTtlInSeconds']! as int).input(),
      authorizerUri: map['authorizerUri'] == null ? null : (map['authorizerUri']! as String).input(),
      identityValidationExpression: map['identityValidationExpression'] == null ? null : (map['identityValidationExpression']! as String).input(),
    );
  }
}

