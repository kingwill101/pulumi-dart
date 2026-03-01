// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorizer_jwt_configuration.dart';

/// {@template pulumi_apigatewayv2_authorizer_authorizer_args_doc}
/// The set of arguments for Authorizer.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_authorizer_authorizer_args_doc}
class AuthorizerArgs {
  /// API identifier.
  final pulumi.Input<String> apiId;
  /// Required credentials as an IAM role for API Gateway to invoke the authorizer.
  /// Supported only for `REQUEST` authorizers.
  final pulumi.Input<String>? authorizerCredentialsArn;
  /// Format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers.
  /// Valid values: `1.0`, `2.0`.
  final pulumi.Input<String>? authorizerPayloadFormatVersion;
  /// Time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled.
  /// If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Defaults to `300`.
  /// Supported only for HTTP API Lambda authorizers.
  final pulumi.Input<int>? authorizerResultTtlInSeconds;
  /// Authorizer type. Valid values: `JWT`, `REQUEST`.
  /// Specify `REQUEST` for a Lambda function using incoming request parameters.
  /// For HTTP APIs, specify `JWT` to use JSON Web Tokens.
  final pulumi.Input<String> authorizerType;
  /// Authorizer's Uniform Resource Identifier (URI).
  /// For `REQUEST` authorizers this must be a well-formed Lambda function URI, such as the `invoke_arn` attribute of the `aws.lambda.Function` resource.
  /// Supported only for `REQUEST` authorizers. Must be between 1 and 2048 characters in length.
  final pulumi.Input<String>? authorizerUri;
  /// Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.
  /// Supported only for HTTP APIs.
  final pulumi.Input<bool>? enableSimpleResponses;
  /// Identity sources for which authorization is requested.
  /// For `REQUEST` authorizers the value is a list of one or more mapping expressions of the specified request parameters.
  /// For `JWT` authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests.
  final pulumi.Input<List<String>>? identitySources;
  /// Configuration of a JWT authorizer. Required for the `JWT` authorizer type.
  /// Supported only for HTTP APIs.
  final pulumi.Input<AuthorizerJwtConfiguration>? jwtConfiguration;
  /// Name of the authorizer. Must be between 1 and 128 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AuthorizerArgs].
  /// [apiId] API identifier.
  /// [authorizerCredentialsArn] Required credentials as an IAM role for API Gateway to invoke the authorizer.
  /// [authorizerPayloadFormatVersion] Format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers.
  /// [authorizerResultTtlInSeconds] Time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled.
  /// [authorizerType] Authorizer type. Valid values: `JWT`, `REQUEST`.
  /// [authorizerUri] Authorizer's Uniform Resource Identifier (URI).
  /// [enableSimpleResponses] Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.
  /// [identitySources] Identity sources for which authorization is requested.
  /// [jwtConfiguration] Configuration of a JWT authorizer. Required for the `JWT` authorizer type.
  /// [name] Name of the authorizer. Must be between 1 and 128 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AuthorizerArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? authorizerCredentialsArn,
    pulumi.Output<String>? authorizerPayloadFormatVersion,
    pulumi.Output<int>? authorizerResultTtlInSeconds,
    required pulumi.Output<String> authorizerType,
    pulumi.Output<String>? authorizerUri,
    pulumi.Output<bool>? enableSimpleResponses,
    pulumi.Output<List<String>>? identitySources,
    pulumi.Output<AuthorizerJwtConfiguration>? jwtConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      authorizerCredentialsArn = pulumi.Input.asOptionalInput<String>(authorizerCredentialsArn),
      authorizerPayloadFormatVersion = pulumi.Input.asOptionalInput<String>(authorizerPayloadFormatVersion),
      authorizerResultTtlInSeconds = pulumi.Input.asOptionalInput<int>(authorizerResultTtlInSeconds),
      authorizerType = pulumi.Input.asInput<String>(authorizerType),
      authorizerUri = pulumi.Input.asOptionalInput<String>(authorizerUri),
      enableSimpleResponses = pulumi.Input.asOptionalInput<bool>(enableSimpleResponses),
      identitySources = pulumi.Input.asOptionalInput<List<String>>(identitySources),
      jwtConfiguration = pulumi.Input.asOptionalInput<AuthorizerJwtConfiguration>(jwtConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'authorizerCredentialsArn': ?authorizerCredentialsArn,
      'authorizerPayloadFormatVersion': ?authorizerPayloadFormatVersion,
      'authorizerResultTtlInSeconds': ?authorizerResultTtlInSeconds,
      'authorizerType': authorizerType,
      'authorizerUri': ?authorizerUri,
      'enableSimpleResponses': ?enableSimpleResponses,
      'identitySources': ?identitySources,
      'jwtConfiguration': ?pulumi.Input.mapOptionalInputValue<AuthorizerJwtConfiguration, Map<String, dynamic>>(jwtConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
    };
  }

  factory AuthorizerArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizerArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      authorizerCredentialsArn: map['authorizerCredentialsArn'] == null ? null : pulumi.Output.create<String>(map['authorizerCredentialsArn'] as String),
      authorizerPayloadFormatVersion: map['authorizerPayloadFormatVersion'] == null ? null : pulumi.Output.create<String>(map['authorizerPayloadFormatVersion'] as String),
      authorizerResultTtlInSeconds: map['authorizerResultTtlInSeconds'] == null ? null : pulumi.Output.create<int>(map['authorizerResultTtlInSeconds'] as int),
      authorizerType: pulumi.Output.create<String>(map['authorizerType'] as String),
      authorizerUri: map['authorizerUri'] == null ? null : pulumi.Output.create<String>(map['authorizerUri'] as String),
      enableSimpleResponses: map['enableSimpleResponses'] == null ? null : pulumi.Output.create<bool>(map['enableSimpleResponses'] as bool),
      identitySources: map['identitySources'] == null ? null : pulumi.Output.create<List<String>>((map['identitySources'] as List).cast<String>()),
      jwtConfiguration: map['jwtConfiguration'] == null ? null : pulumi.Output.create<AuthorizerJwtConfiguration>(AuthorizerJwtConfiguration.fromMap((map['jwtConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

