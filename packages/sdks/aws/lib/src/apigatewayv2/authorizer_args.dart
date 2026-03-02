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
    required this.apiId,
    this.authorizerCredentialsArn,
    this.authorizerPayloadFormatVersion,
    this.authorizerResultTtlInSeconds,
    required this.authorizerType,
    this.authorizerUri,
    this.enableSimpleResponses,
    this.identitySources,
    this.jwtConfiguration,
    this.name,
    this.region,
  });

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
      apiId: (map['apiId'] as String).input(),
      authorizerCredentialsArn: map['authorizerCredentialsArn'] == null ? null : (map['authorizerCredentialsArn'] as String).input(),
      authorizerPayloadFormatVersion: map['authorizerPayloadFormatVersion'] == null ? null : (map['authorizerPayloadFormatVersion'] as String).input(),
      authorizerResultTtlInSeconds: map['authorizerResultTtlInSeconds'] == null ? null : (map['authorizerResultTtlInSeconds'] as int).input(),
      authorizerType: (map['authorizerType'] as String).input(),
      authorizerUri: map['authorizerUri'] == null ? null : (map['authorizerUri'] as String).input(),
      enableSimpleResponses: map['enableSimpleResponses'] == null ? null : (map['enableSimpleResponses'] as bool).input(),
      identitySources: map['identitySources'] == null ? null : ((map['identitySources'] as List).cast<String>()).input(),
      jwtConfiguration: map['jwtConfiguration'] == null ? null : (AuthorizerJwtConfiguration.fromMap((map['jwtConfiguration'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

