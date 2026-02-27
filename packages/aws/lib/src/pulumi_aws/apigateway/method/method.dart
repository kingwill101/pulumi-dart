import 'package:pulumi/pulumi.dart';
import 'method_args.dart';

/// Provides a HTTP Method for an API Gateway Resource.
///
/// ## Example Usage
///
///
///
/// ## Usage with Cognito User Pool Authorizer
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Method` using `REST-API-ID/RESOURCE-ID/HTTP-METHOD`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/method:Method example 12345abcde/67890fghij/GET
/// ```
class Method extends CustomResource {
  /// Specify if the method requires an API key
  late final Output<bool?> apiKeyRequired;

  /// Type of authorization used for the method (`NONE`, `CUSTOM`, `AWS_IAM`, `COGNITO_USER_POOLS`)
  late final Output<String> authorization;

  /// Authorization scopes used when the authorization is `COGNITO_USER_POOLS`
  late final Output<List<String>?> authorizationScopes;

  /// Authorizer id to be used when the authorization is `CUSTOM` or `COGNITO_USER_POOLS`
  late final Output<String?> authorizerId;

  /// HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`)
  late final Output<String> httpMethod;

  /// Function name that will be given to the method when generating an SDK through API Gateway. If omitted, API Gateway will generate a function name based on the resource path and HTTP verb.
  late final Output<String?> operationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of the API models used for the request's content type
  /// where key is the content type (e.g., `application/json`)
  /// and value is either `Error`, `Empty` (built-in models) or `aws.apigateway.Model`'s `name`.
  late final Output<Map<String, String>?> requestModels;

  /// Map of request parameters (from the path, query string and headers) that should be passed to the integration. The boolean value indicates whether the parameter is required (`true`) or optional (`false`).
  /// For example: `request_parameters = {"method.request.header.X-Some-Header" = true "method.request.querystring.some-query-param" = true}` would define that the header `X-Some-Header` and the query string `some-query-param` must be provided in the request.
  late final Output<Map<String, bool>?> requestParameters;

  /// ID of a `aws.apigateway.RequestValidator`
  late final Output<String?> requestValidatorId;

  /// API resource ID
  late final Output<String> resourceId;

  /// ID of the associated REST API
  late final Output<String> restApi;

  Method(
    String name, {
    MethodArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/method:Method',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKeyRequired = registerOutput<bool?>('apiKeyRequired');
    this.authorization = registerOutput<String>('authorization');
    this.authorizationScopes =
        registerOutput<List<String>?>('authorizationScopes');
    this.authorizerId = registerOutput<String?>('authorizerId');
    this.httpMethod = registerOutput<String>('httpMethod');
    this.operationName = registerOutput<String?>('operationName');
    this.region = registerOutput<String>('region');
    this.requestModels = registerOutput<Map<String, String>?>('requestModels');
    this.requestParameters =
        registerOutput<Map<String, bool>?>('requestParameters');
    this.requestValidatorId = registerOutput<String?>('requestValidatorId');
    this.resourceId = registerOutput<String>('resourceId');
    this.restApi = registerOutput<String>('restApi');
  }
}
