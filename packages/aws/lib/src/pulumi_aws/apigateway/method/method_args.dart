// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Method.
class MethodArgs {
  /// Specify if the method requires an API key
  final pulumi.Input<bool>? apiKeyRequired;

  /// Type of authorization used for the method (`NONE`, `CUSTOM`, `AWS_IAM`, `COGNITO_USER_POOLS`)
  final pulumi.Input<String> authorization;

  /// Authorization scopes used when the authorization is `COGNITO_USER_POOLS`
  final pulumi.Input<List<String>>? authorizationScopes;

  /// Authorizer id to be used when the authorization is `CUSTOM` or `COGNITO_USER_POOLS`
  final pulumi.Input<String>? authorizerId;

  /// HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`)
  final pulumi.Input<String> httpMethod;

  /// Function name that will be given to the method when generating an SDK through API Gateway. If omitted, API Gateway will generate a function name based on the resource path and HTTP verb.
  final pulumi.Input<String>? operationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of the API models used for the request's content type
  /// where key is the content type (e.g., `application/json`)
  /// and value is either `Error`, `Empty` (built-in models) or `aws.apigateway.Model`'s `name`.
  final pulumi.Input<Map<String, String>>? requestModels;

  /// Map of request parameters (from the path, query string and headers) that should be passed to the integration. The boolean value indicates whether the parameter is required (`true`) or optional (`false`).
  /// For example: `request_parameters = {"method.request.header.X-Some-Header" = true "method.request.querystring.some-query-param" = true}` would define that the header `X-Some-Header` and the query string `some-query-param` must be provided in the request.
  final pulumi.Input<Map<String, bool>>? requestParameters;

  /// ID of a `aws.apigateway.RequestValidator`
  final pulumi.Input<String>? requestValidatorId;

  /// API resource ID
  final pulumi.Input<String> resourceId;

  /// ID of the associated REST API
  final pulumi.Input<String> restApi;

  MethodArgs({
    this.apiKeyRequired,
    required this.authorization,
    this.authorizationScopes,
    this.authorizerId,
    required this.httpMethod,
    this.operationName,
    this.region,
    this.requestModels,
    this.requestParameters,
    this.requestValidatorId,
    required this.resourceId,
    required this.restApi,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyRequiredValue = apiKeyRequired;
    if (apiKeyRequiredValue != null) {
      map['apiKeyRequired'] = apiKeyRequiredValue;
    }
    map['authorization'] = authorization;
    final authorizationScopesValue = authorizationScopes;
    if (authorizationScopesValue != null) {
      map['authorizationScopes'] = authorizationScopesValue;
    }
    final authorizerIdValue = authorizerId;
    if (authorizerIdValue != null) {
      map['authorizerId'] = authorizerIdValue;
    }
    map['httpMethod'] = httpMethod;
    final operationNameValue = operationName;
    if (operationNameValue != null) {
      map['operationName'] = operationNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestModelsValue = requestModels;
    if (requestModelsValue != null) {
      map['requestModels'] = requestModelsValue;
    }
    final requestParametersValue = requestParameters;
    if (requestParametersValue != null) {
      map['requestParameters'] = requestParametersValue;
    }
    final requestValidatorIdValue = requestValidatorId;
    if (requestValidatorIdValue != null) {
      map['requestValidatorId'] = requestValidatorIdValue;
    }
    map['resourceId'] = resourceId;
    map['restApi'] = restApi;
    return map;
  }

  factory MethodArgs.fromMap(Map<String, dynamic> map) {
    return MethodArgs(
      apiKeyRequired: pulumi.Input.asOptionalInput<bool>(map['apiKeyRequired']),
      authorization: pulumi.Input.asInput<String>(map['authorization']),
      authorizationScopes: pulumi.Input.asOptionalInput<List<String>>(
          map['authorizationScopes']),
      authorizerId: pulumi.Input.asOptionalInput<String>(map['authorizerId']),
      httpMethod: pulumi.Input.asInput<String>(map['httpMethod']),
      operationName: pulumi.Input.asOptionalInput<String>(map['operationName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requestModels: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['requestModels']),
      requestParameters: pulumi.Input.asOptionalInput<Map<String, bool>>(
          map['requestParameters']),
      requestValidatorId:
          pulumi.Input.asOptionalInput<String>(map['requestValidatorId']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
      restApi: pulumi.Input.asInput<String>(map['restApi']),
    );
  }
}
