// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../authorizer_jwt_configuration/authorizer_jwt_configuration.dart';

/// The set of arguments for Authorizer.
class AuthorizerArgs2 {
  /// API identifier.
  final Input<String> apiId;

  /// Required credentials as an IAM role for API Gateway to invoke the authorizer.
  /// Supported only for `REQUEST` authorizers.
  final Input<String>? authorizerCredentialsArn;

  /// Format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers.
  /// Valid values: `1.0`, `2.0`.
  final Input<String>? authorizerPayloadFormatVersion;

  /// Time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled.
  /// If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Defaults to <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span>.
  /// Supported only for HTTP API Lambda authorizers.
  final Input<int>? authorizerResultTtlInSeconds;

  /// Authorizer type. Valid values: `JWT`, `REQUEST`.
  /// Specify `REQUEST` for a Lambda function using incoming request parameters.
  /// For HTTP APIs, specify `JWT` to use JSON Web Tokens.
  final Input<String> authorizerType;

  /// Authorizer's Uniform Resource Identifier (URI).
  /// For `REQUEST` authorizers this must be a well-formed Lambda function URI, such as the <span pulumi-lang-nodejs="`invokeArn`" pulumi-lang-dotnet="`InvokeArn`" pulumi-lang-go="`invokeArn`" pulumi-lang-python="`invoke_arn`" pulumi-lang-yaml="`invokeArn`" pulumi-lang-java="`invokeArn`">`invoke_arn`</span> attribute of the <span pulumi-lang-nodejs="`aws.lambda.Function`" pulumi-lang-dotnet="`aws.lambda.Function`" pulumi-lang-go="`lambda.Function`" pulumi-lang-python="`lambda.Function`" pulumi-lang-yaml="`aws.lambda.Function`" pulumi-lang-java="`aws.lambda.Function`">`aws.lambda.Function`</span> resource.
  /// Supported only for `REQUEST` authorizers. Must be between 1 and 2048 characters in length.
  final Input<String>? authorizerUri;

  /// Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.
  /// Supported only for HTTP APIs.
  final Input<bool>? enableSimpleResponses;

  /// Identity sources for which authorization is requested.
  /// For `REQUEST` authorizers the value is a list of one or more mapping expressions of the specified request parameters.
  /// For `JWT` authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests.
  final Input<List<String>>? identitySources;

  /// Configuration of a JWT authorizer. Required for the `JWT` authorizer type.
  /// Supported only for HTTP APIs.
  final Input<AuthorizerJwtConfiguration>? jwtConfiguration;

  /// Name of the authorizer. Must be between 1 and 128 characters in length.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  AuthorizerArgs2({
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
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final authorizerCredentialsArnValue = authorizerCredentialsArn;
    if (authorizerCredentialsArnValue != null) {
      map['authorizerCredentialsArn'] = authorizerCredentialsArnValue;
    }
    final authorizerPayloadFormatVersionValue = authorizerPayloadFormatVersion;
    if (authorizerPayloadFormatVersionValue != null) {
      map['authorizerPayloadFormatVersion'] =
          authorizerPayloadFormatVersionValue;
    }
    final authorizerResultTtlInSecondsValue = authorizerResultTtlInSeconds;
    if (authorizerResultTtlInSecondsValue != null) {
      map['authorizerResultTtlInSeconds'] = authorizerResultTtlInSecondsValue;
    }
    map['authorizerType'] = authorizerType;
    final authorizerUriValue = authorizerUri;
    if (authorizerUriValue != null) {
      map['authorizerUri'] = authorizerUriValue;
    }
    final enableSimpleResponsesValue = enableSimpleResponses;
    if (enableSimpleResponsesValue != null) {
      map['enableSimpleResponses'] = enableSimpleResponsesValue;
    }
    final identitySourcesValue = identitySources;
    if (identitySourcesValue != null) {
      map['identitySources'] = identitySourcesValue;
    }
    final jwtConfigurationValue = jwtConfiguration;
    if (jwtConfigurationValue != null) {
      map['jwtConfiguration'] = Input.mapOptionalInputValue<
              AuthorizerJwtConfiguration, Map<String, dynamic>>(
          jwtConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AuthorizerArgs2.fromMap(Map<String, dynamic> map) {
    return AuthorizerArgs2(
      apiId: Input.asInput<String>(map['apiId']),
      authorizerCredentialsArn:
          Input.asOptionalInput<String>(map['authorizerCredentialsArn']),
      authorizerPayloadFormatVersion:
          Input.asOptionalInput<String>(map['authorizerPayloadFormatVersion']),
      authorizerResultTtlInSeconds:
          Input.asOptionalInput<int>(map['authorizerResultTtlInSeconds']),
      authorizerType: Input.asInput<String>(map['authorizerType']),
      authorizerUri: Input.asOptionalInput<String>(map['authorizerUri']),
      enableSimpleResponses:
          Input.asOptionalInput<bool>(map['enableSimpleResponses']),
      identitySources:
          Input.asOptionalInput<List<String>>(map['identitySources']),
      jwtConfiguration: Input.asOptionalInput<AuthorizerJwtConfiguration>(
          map['jwtConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
