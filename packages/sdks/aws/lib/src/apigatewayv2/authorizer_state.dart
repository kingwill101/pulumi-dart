// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorizer_jwt_configuration.dart';

/// Input properties used for looking up and filtering Authorizer resources.
class AuthorizerState {
  /// API identifier.
  final pulumi.Input<String>? apiId;
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
  final pulumi.Input<String>? authorizerType;
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

  /// Creates a new [AuthorizerState].
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
  AuthorizerState({
    this.apiId,
    this.authorizerCredentialsArn,
    this.authorizerPayloadFormatVersion,
    this.authorizerResultTtlInSeconds,
    this.authorizerType,
    this.authorizerUri,
    this.enableSimpleResponses,
    this.identitySources,
    this.jwtConfiguration,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'authorizerCredentialsArn': ?authorizerCredentialsArn,
      'authorizerPayloadFormatVersion': ?authorizerPayloadFormatVersion,
      'authorizerResultTtlInSeconds': ?authorizerResultTtlInSeconds,
      'authorizerType': ?authorizerType,
      'authorizerUri': ?authorizerUri,
      'enableSimpleResponses': ?enableSimpleResponses,
      'identitySources': ?identitySources,
      'jwtConfiguration': ?pulumi.Input.mapOptionalInputValue<AuthorizerJwtConfiguration, Map<String, dynamic>>(jwtConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
    };
  }

  factory AuthorizerState.fromMap(Map<String, dynamic> map) {
    return AuthorizerState(
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizerCredentialsArn: (() { final guardedValue = map['authorizerCredentialsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizerPayloadFormatVersion: (() { final guardedValue = map['authorizerPayloadFormatVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizerResultTtlInSeconds: (() { final guardedValue = map['authorizerResultTtlInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      authorizerType: (() { final guardedValue = map['authorizerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizerUri: (() { final guardedValue = map['authorizerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableSimpleResponses: (() { final guardedValue = map['enableSimpleResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identitySources: (() { final guardedValue = map['identitySources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jwtConfiguration: (() { final guardedValue = map['jwtConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizerJwtConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

