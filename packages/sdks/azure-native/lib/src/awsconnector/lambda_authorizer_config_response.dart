// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LambdaAuthorizerConfig
class LambdaAuthorizerConfigResponse {
  /// &lt;p&gt;The number of seconds a response should be cached for. The default is 0 seconds, which disables caching. If you don't specify a value for &lt;code&gt;authorizerResultTtlInSeconds&lt;/code&gt;, the default value is used. The maximum value is one hour (3600 seconds). The Lambda function can override this by returning a &lt;code&gt;ttlOverride&lt;/code&gt; key in its response.&lt;/p&gt;
  final pulumi.Input<int>? authorizerResultTtlInSeconds;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the Lambda function to be called for authorization. This can be a standard Lambda ARN, a version ARN (&lt;code&gt;.../v3&lt;/code&gt;), or an alias ARN. &lt;/p&gt; &lt;p&gt; &lt;b&gt;Note&lt;/b&gt;: This Lambda function must have the following resource-based policy assigned to it. When configuring Lambda authorizers in the console, this is done for you. To use the Command Line Interface (CLI), run the following:&lt;/p&gt; &lt;p&gt; &lt;code&gt;aws lambda add-permission --function-name 'arn:aws:lambda:us-east-2:111122223333:function:my-function' --statement-id 'appsync' --principal appsync.amazonaws.com --action lambda:InvokeFunction&lt;/code&gt; &lt;/p&gt;
  final pulumi.Input<String>? authorizerUri;
  /// &lt;p&gt;A regular expression for validation of tokens before the Lambda function is called.&lt;/p&gt;
  final pulumi.Input<String>? identityValidationExpression;

  /// Creates a new [LambdaAuthorizerConfigResponse].
  /// [authorizerResultTtlInSeconds] &lt;p&gt;The number of seconds a response should be cached for. The default is 0 seconds, which disables caching. If you don't specify a value for &lt;code&gt;authorizerResultTtlInSeconds&lt;/code&gt;, the default value is used. The maximum value is one hour (3600 seconds). The Lambda function can override this by returning a &lt;code&gt;ttlOverride&lt;/code&gt; key in its response.&lt;/p&gt;
  /// [authorizerUri] &lt;p&gt;The Amazon Resource Name (ARN) of the Lambda function to be called for authorization. This can be a standard Lambda ARN, a version ARN (&lt;code&gt;.../v3&lt;/code&gt;), or an alias ARN. &lt;/p&gt; &lt;p&gt; &lt;b&gt;Note&lt;/b&gt;: This Lambda function must have the following resource-based policy assigned to it. When configuring Lambda authorizers in the console, this is done for you. To use the Command Line Interface (CLI), run the following:&lt;/p&gt; &lt;p&gt; &lt;code&gt;aws lambda add-permission --function-name 'arn:aws:lambda:us-east-2:111122223333:function:my-function' --statement-id 'appsync' --principal appsync.amazonaws.com --action lambda:InvokeFunction&lt;/code&gt; &lt;/p&gt;
  /// [identityValidationExpression] &lt;p&gt;A regular expression for validation of tokens before the Lambda function is called.&lt;/p&gt;
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
      authorizerResultTtlInSeconds: (() { final guardedValue = map['authorizerResultTtlInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      authorizerUri: (() { final guardedValue = map['authorizerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityValidationExpression: (() { final guardedValue = map['identityValidationExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

