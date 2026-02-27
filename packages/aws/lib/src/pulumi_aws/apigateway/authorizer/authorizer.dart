import 'package:pulumi/pulumi.dart';
import 'authorizer_args.dart';

/// Provides an API Gateway Authorizer.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS API Gateway Authorizer using the `REST-API-ID/AUTHORIZER-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/authorizer:Authorizer authorizer 12345abcde/example
/// ```
class Authorizer extends CustomResource {
  /// ARN of the API Gateway Authorizer
  late final Output<String> arn;

  /// Credentials required for the authorizer. To specify an IAM Role for API Gateway to assume, use the IAM Role ARN.
  late final Output<String?> authorizerCredentials;

  /// TTL of cached authorizer results in seconds. Defaults to `300`.
  late final Output<int?> authorizerResultTtlInSeconds;

  /// Authorizer's Uniform Resource Identifier (URI). This must be a well-formed Lambda function URI in the form of `arn:aws:apigateway:{region}:lambda:path/{service_api}`,
  /// e.g., `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:012345678912:function:my-function/invocations`
  late final Output<String?> authorizerUri;

  /// Source of the identity in an incoming request. Defaults to `method.request.header.Authorization`. For `REQUEST` type, this may be a comma-separated list of values, including headers, query string parameters and stage variables - e.g., `"method.request.header.SomeHeaderName,method.request.querystring.SomeQueryStringName,stageVariables.SomeStageVariableName"`
  late final Output<String?> identitySource;

  /// Validation expression for the incoming identity. For `TOKEN` type, this value should be a regular expression. The incoming token from the client is matched against this expression, and will proceed if the token matches. If the token doesn't match, the client receives a 401 Unauthorized response.
  late final Output<String?> identityValidationExpression;

  /// Name of the authorizer
  late final Output<String> name;

  /// List of the Amazon Cognito user pool ARNs. Each element is of this format: `arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}`.
  late final Output<List<String>?> providerArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the associated REST API
  late final Output<String> restApi;

  /// Type of the authorizer. Possible values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, or `COGNITO_USER_POOLS` for using an Amazon Cognito user pool. Defaults to `TOKEN`.
  late final Output<String?> type;

  Authorizer(
    String name, {
    AuthorizerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/authorizer:Authorizer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authorizerCredentials =
        registerOutput<String?>('authorizerCredentials');
    this.authorizerResultTtlInSeconds =
        registerOutput<int?>('authorizerResultTtlInSeconds');
    this.authorizerUri = registerOutput<String?>('authorizerUri');
    this.identitySource = registerOutput<String?>('identitySource');
    this.identityValidationExpression =
        registerOutput<String?>('identityValidationExpression');
    this.name = registerOutput<String>('name');
    this.providerArns = registerOutput<List<String>?>('providerArns');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.type = registerOutput<String?>('type');
  }
}
