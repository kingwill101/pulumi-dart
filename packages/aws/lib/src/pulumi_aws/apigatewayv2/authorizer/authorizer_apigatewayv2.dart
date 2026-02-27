import 'package:pulumi/pulumi.dart' as pulumi;
import '../authorizer_jwt_configuration/authorizer_jwt_configuration.dart';
import 'authorizer_apigatewayv2_args.dart';

/// Manages an Amazon API Gateway Version 2 authorizer.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// ## Example Usage
///
/// ### Basic WebSocket API
///
///
///
/// ### Basic HTTP API
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Authorizer` using the API identifier and authorizer identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/authorizer:Authorizer example aabbccddee/1122334
/// ```
class AuthorizerApigatewayv2 extends pulumi.CustomResource {
  /// API identifier.
  late final pulumi.Output<String> apiId;

  /// Required credentials as an IAM role for API Gateway to invoke the authorizer.
  /// Supported only for `REQUEST` authorizers.
  late final pulumi.Output<String?> authorizerCredentialsArn;

  /// Format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers.
  /// Valid values: `1.0`, `2.0`.
  late final pulumi.Output<String?> authorizerPayloadFormatVersion;

  /// Time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled.
  /// If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Defaults to `300`.
  /// Supported only for HTTP API Lambda authorizers.
  late final pulumi.Output<int> authorizerResultTtlInSeconds;

  /// Authorizer type. Valid values: `JWT`, `REQUEST`.
  /// Specify `REQUEST` for a Lambda function using incoming request parameters.
  /// For HTTP APIs, specify `JWT` to use JSON Web Tokens.
  late final pulumi.Output<String> authorizerType;

  /// Authorizer's Uniform Resource Identifier (URI).
  /// For `REQUEST` authorizers this must be a well-formed Lambda function URI, such as the `invoke_arn` attribute of the `aws.lambda.Function` resource.
  /// Supported only for `REQUEST` authorizers. Must be between 1 and 2048 characters in length.
  late final pulumi.Output<String?> authorizerUri;

  /// Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.
  /// Supported only for HTTP APIs.
  late final pulumi.Output<bool?> enableSimpleResponses;

  /// Identity sources for which authorization is requested.
  /// For `REQUEST` authorizers the value is a list of one or more mapping expressions of the specified request parameters.
  /// For `JWT` authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests.
  late final pulumi.Output<List<String>?> identitySources;

  /// Configuration of a JWT authorizer. Required for the `JWT` authorizer type.
  /// Supported only for HTTP APIs.
  late final pulumi.Output<AuthorizerJwtConfiguration?> jwtConfiguration;

  /// Name of the authorizer. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  AuthorizerApigatewayv2(
    String name, {
    AuthorizerApigatewayv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/authorizer:Authorizer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.authorizerCredentialsArn =
        registerOutput<String?>('authorizerCredentialsArn');
    this.authorizerPayloadFormatVersion =
        registerOutput<String?>('authorizerPayloadFormatVersion');
    this.authorizerResultTtlInSeconds =
        registerOutput<int>('authorizerResultTtlInSeconds');
    this.authorizerType = registerOutput<String>('authorizerType');
    this.authorizerUri = registerOutput<String?>('authorizerUri');
    this.enableSimpleResponses = registerOutput<bool?>('enableSimpleResponses');
    this.identitySources = registerOutput<List<String>?>('identitySources');
    this.jwtConfiguration =
        registerOutput<AuthorizerJwtConfiguration?>('jwtConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
