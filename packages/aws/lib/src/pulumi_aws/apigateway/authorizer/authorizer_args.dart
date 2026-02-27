// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Authorizer.
class AuthorizerArgs {
  /// Credentials required for the authorizer. To specify an IAM Role for API Gateway to assume, use the IAM Role ARN.
  final pulumi.Input<String>? authorizerCredentials;

  /// TTL of cached authorizer results in seconds. Defaults to `300`.
  final pulumi.Input<int>? authorizerResultTtlInSeconds;

  /// Authorizer's Uniform Resource Identifier (URI). This must be a well-formed Lambda function URI in the form of `arn:aws:apigateway:{region}:lambda:path/{service_api}`,
  /// e.g., `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:012345678912:function:my-function/invocations`
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
  final pulumi.Input<String> restApi;

  /// Type of the authorizer. Possible values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, or `COGNITO_USER_POOLS` for using an Amazon Cognito user pool. Defaults to `TOKEN`.
  final pulumi.Input<String>? type;

  AuthorizerArgs({
    this.authorizerCredentials,
    this.authorizerResultTtlInSeconds,
    this.authorizerUri,
    this.identitySource,
    this.identityValidationExpression,
    this.name,
    this.providerArns,
    this.region,
    required this.restApi,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizerCredentialsValue = authorizerCredentials;
    if (authorizerCredentialsValue != null) {
      map['authorizerCredentials'] = authorizerCredentialsValue;
    }
    final authorizerResultTtlInSecondsValue = authorizerResultTtlInSeconds;
    if (authorizerResultTtlInSecondsValue != null) {
      map['authorizerResultTtlInSeconds'] = authorizerResultTtlInSecondsValue;
    }
    final authorizerUriValue = authorizerUri;
    if (authorizerUriValue != null) {
      map['authorizerUri'] = authorizerUriValue;
    }
    final identitySourceValue = identitySource;
    if (identitySourceValue != null) {
      map['identitySource'] = identitySourceValue;
    }
    final identityValidationExpressionValue = identityValidationExpression;
    if (identityValidationExpressionValue != null) {
      map['identityValidationExpression'] = identityValidationExpressionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final providerArnsValue = providerArns;
    if (providerArnsValue != null) {
      map['providerArns'] = providerArnsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApi'] = restApi;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory AuthorizerArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizerArgs(
      authorizerCredentials:
          pulumi.Input.asOptionalInput<String>(map['authorizerCredentials']),
      authorizerResultTtlInSeconds: pulumi.Input.asOptionalInput<int>(
          map['authorizerResultTtlInSeconds']),
      authorizerUri: pulumi.Input.asOptionalInput<String>(map['authorizerUri']),
      identitySource:
          pulumi.Input.asOptionalInput<String>(map['identitySource']),
      identityValidationExpression: pulumi.Input.asOptionalInput<String>(
          map['identityValidationExpression']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      providerArns:
          pulumi.Input.asOptionalInput<List<String>>(map['providerArns']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restApi: pulumi.Input.asInput<String>(map['restApi']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
