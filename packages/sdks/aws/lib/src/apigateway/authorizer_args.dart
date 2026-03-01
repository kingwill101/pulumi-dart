// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_authorizer_authorizer_args_doc}
/// The set of arguments for Authorizer.
/// {@endtemplate}
/// {@macro pulumi_apigateway_authorizer_authorizer_args_doc}
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

  /// Creates a new [AuthorizerArgs].
  /// [authorizerCredentials] Credentials required for the authorizer. To specify an IAM Role for API Gateway to assume, use the IAM Role ARN.
  /// [authorizerResultTtlInSeconds] TTL of cached authorizer results in seconds. Defaults to `300`.
  /// [authorizerUri] Authorizer's Uniform Resource Identifier (URI). This must be a well-formed Lambda function URI in the form of `arn:aws:apigateway:{region}:lambda:path/{service_api}`,
  /// [identitySource] Source of the identity in an incoming request. Defaults to `method.request.header.Authorization`. For `REQUEST` type, this may be a comma-separated list of values, including headers, query string parameters and stage variables - e.g., `"method.request.header.SomeHeaderName,method.request.querystring.SomeQueryStringName,stageVariables.SomeStageVariableName"`
  /// [identityValidationExpression] Validation expression for the incoming identity. For `TOKEN` type, this value should be a regular expression. The incoming token from the client is matched against this expression, and will proceed if the token matches. If the token doesn't match, the client receives a 401 Unauthorized response.
  /// [name] Name of the authorizer
  /// [providerArns] List of the Amazon Cognito user pool ARNs. Each element is of this format: `arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the associated REST API
  /// [type] Type of the authorizer. Possible values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, or `COGNITO_USER_POOLS` for using an Amazon Cognito user pool. Defaults to `TOKEN`.
  AuthorizerArgs({
    pulumi.Output<String>? authorizerCredentials,
    pulumi.Output<int>? authorizerResultTtlInSeconds,
    pulumi.Output<String>? authorizerUri,
    pulumi.Output<String>? identitySource,
    pulumi.Output<String>? identityValidationExpression,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? providerArns,
    pulumi.Output<String>? region,
    required pulumi.Output<String> restApi,
    pulumi.Output<String>? type,
  }) :
      authorizerCredentials = pulumi.Input.asOptionalInput<String>(authorizerCredentials),
      authorizerResultTtlInSeconds = pulumi.Input.asOptionalInput<int>(authorizerResultTtlInSeconds),
      authorizerUri = pulumi.Input.asOptionalInput<String>(authorizerUri),
      identitySource = pulumi.Input.asOptionalInput<String>(identitySource),
      identityValidationExpression = pulumi.Input.asOptionalInput<String>(identityValidationExpression),
      name = pulumi.Input.asOptionalInput<String>(name),
      providerArns = pulumi.Input.asOptionalInput<List<String>>(providerArns),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApi = pulumi.Input.asInput<String>(restApi),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredentials': ?authorizerCredentials,
      'authorizerResultTtlInSeconds': ?authorizerResultTtlInSeconds,
      'authorizerUri': ?authorizerUri,
      'identitySource': ?identitySource,
      'identityValidationExpression': ?identityValidationExpression,
      'name': ?name,
      'providerArns': ?providerArns,
      'region': ?region,
      'restApi': restApi,
      'type': ?type,
    };
  }

  factory AuthorizerArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizerArgs(
      authorizerCredentials: map['authorizerCredentials'] == null ? null : pulumi.Output.create<String>(map['authorizerCredentials'] as String),
      authorizerResultTtlInSeconds: map['authorizerResultTtlInSeconds'] == null ? null : pulumi.Output.create<int>(map['authorizerResultTtlInSeconds'] as int),
      authorizerUri: map['authorizerUri'] == null ? null : pulumi.Output.create<String>(map['authorizerUri'] as String),
      identitySource: map['identitySource'] == null ? null : pulumi.Output.create<String>(map['identitySource'] as String),
      identityValidationExpression: map['identityValidationExpression'] == null ? null : pulumi.Output.create<String>(map['identityValidationExpression'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      providerArns: map['providerArns'] == null ? null : pulumi.Output.create<List<String>>((map['providerArns'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApi: pulumi.Output.create<String>(map['restApi'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

