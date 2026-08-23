// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Authorizer resources.
class AuthorizerState {
  /// ARN of the API Gateway Authorizer
  final pulumi.Input<String>? arn;
  /// Credentials required for the authorizer. To specify an IAM Role for API Gateway to assume, use the IAM Role ARN.
  final pulumi.Input<String>? authorizerCredentials;
  /// TTL of cached authorizer results in seconds. Defaults to `300`.
  final pulumi.Input<int>? authorizerResultTtlInSeconds;
  /// Authorizer's Uniform Resource Identifier (URI). This must be a well-formed Lambda function URI in the form of `arn:aws:apigateway:{region}:lambda:path/{service_api}`, e.g., `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:012345678912:function:my-function/invocations`
  final pulumi.Input<String>? authorizerUri;
  /// Source of the identity in an incoming request. Defaults to `method.request.header.Authorization`. For `REQUEST` type, this may be a comma-separated list of values, including headers, query string parameters and stage variables - e.g., `"method.request.header.SomeHeaderName,method.request.querystring.SomeQueryStringName,stageVariables.SomeStageVariableName"`
  final pulumi.Input<String>? identitySource;
  /// Validation expression for the incoming identity. For `TOKEN` type, this value should be a regular expression. The incoming token from the client is matched against this expression, and will proceed if the token matches. If the token doesn't match, the client receives a 401 Unauthorized response.
  final pulumi.Input<String>? identityValidationExpression;
  /// Name of the authorizer
  final pulumi.Input<String>? name;
  /// List of the Amazon Cognito user pool ARNs. Each element is of this format: `arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}`.
  final pulumi.Input<List<String>>? providerArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated REST API
  final pulumi.Input<String>? restApi;
  /// Type of the authorizer. Possible values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, or `COGNITO_USER_POOLS` for using an Amazon Cognito user pool. Defaults to `TOKEN`.
  final pulumi.Input<String>? type;

  /// Creates a new [AuthorizerState].
  /// [arn] ARN of the API Gateway Authorizer
  /// [authorizerCredentials] Credentials required for the authorizer. To specify an IAM Role for API Gateway to assume, use the IAM Role ARN.
  /// [authorizerResultTtlInSeconds] TTL of cached authorizer results in seconds. Defaults to `300`.
  /// [authorizerUri] Authorizer's Uniform Resource Identifier (URI). This must be a well-formed Lambda function URI in the form of `arn:aws:apigateway:{region}:lambda:path/{service_api}`, e.g., `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:012345678912:function:my-function/invocations`
  /// [identitySource] Source of the identity in an incoming request. Defaults to `method.request.header.Authorization`. For `REQUEST` type, this may be a comma-separated list of values, including headers, query string parameters and stage variables - e.g., `"method.request.header.SomeHeaderName,method.request.querystring.SomeQueryStringName,stageVariables.SomeStageVariableName"`
  /// [identityValidationExpression] Validation expression for the incoming identity. For `TOKEN` type, this value should be a regular expression. The incoming token from the client is matched against this expression, and will proceed if the token matches. If the token doesn't match, the client receives a 401 Unauthorized response.
  /// [name] Name of the authorizer
  /// [providerArns] List of the Amazon Cognito user pool ARNs. Each element is of this format: `arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the associated REST API
  /// [type] Type of the authorizer. Possible values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, or `COGNITO_USER_POOLS` for using an Amazon Cognito user pool. Defaults to `TOKEN`.
  const AuthorizerState({
    this.arn,
    this.authorizerCredentials,
    this.authorizerResultTtlInSeconds,
    this.authorizerUri,
    this.identitySource,
    this.identityValidationExpression,
    this.name,
    this.providerArns,
    this.region,
    this.restApi,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authorizerCredentials': ?authorizerCredentials,
      'authorizerResultTtlInSeconds': ?authorizerResultTtlInSeconds,
      'authorizerUri': ?authorizerUri,
      'identitySource': ?identitySource,
      'identityValidationExpression': ?identityValidationExpression,
      'name': ?name,
      'providerArns': ?providerArns,
      'region': ?region,
      'restApi': ?restApi,
      'type': ?type,
    };
  }

  factory AuthorizerState.fromMap(Map<String, dynamic> map) {
    return AuthorizerState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizerCredentials: (() { final guardedValue = map['authorizerCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizerResultTtlInSeconds: (() { final guardedValue = map['authorizerResultTtlInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      authorizerUri: (() { final guardedValue = map['authorizerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identitySource: (() { final guardedValue = map['identitySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityValidationExpression: (() { final guardedValue = map['identityValidationExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerArns: (() { final guardedValue = map['providerArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restApi: (() { final guardedValue = map['restApi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
