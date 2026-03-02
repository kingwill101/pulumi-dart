// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Method resources.
class MethodState {
  /// Specify if the method requires an API key
  final pulumi.Input<bool>? apiKeyRequired;
  /// Type of authorization used for the method (`NONE`, `CUSTOM`, `AWS_IAM`, `COGNITO_USER_POOLS`)
  final pulumi.Input<String>? authorization;
  /// Authorization scopes used when the authorization is `COGNITO_USER_POOLS`
  final pulumi.Input<List<String>>? authorizationScopes;
  /// Authorizer id to be used when the authorization is `CUSTOM` or `COGNITO_USER_POOLS`
  final pulumi.Input<String>? authorizerId;
  /// HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`)
  final pulumi.Input<String>? httpMethod;
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
  final pulumi.Input<String>? resourceId;
  /// ID of the associated REST API
  final pulumi.Input<String>? restApi;

  /// Creates a new [MethodState].
  /// [apiKeyRequired] Specify if the method requires an API key
  /// [authorization] Type of authorization used for the method (`NONE`, `CUSTOM`, `AWS_IAM`, `COGNITO_USER_POOLS`)
  /// [authorizationScopes] Authorization scopes used when the authorization is `COGNITO_USER_POOLS`
  /// [authorizerId] Authorizer id to be used when the authorization is `CUSTOM` or `COGNITO_USER_POOLS`
  /// [httpMethod] HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`)
  /// [operationName] Function name that will be given to the method when generating an SDK through API Gateway. If omitted, API Gateway will generate a function name based on the resource path and HTTP verb.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestModels] Map of the API models used for the request's content type
  /// [requestParameters] Map of request parameters (from the path, query string and headers) that should be passed to the integration. The boolean value indicates whether the parameter is required (`true`) or optional (`false`).
  /// [requestValidatorId] ID of a `aws.apigateway.RequestValidator`
  /// [resourceId] API resource ID
  /// [restApi] ID of the associated REST API
  MethodState({
    this.apiKeyRequired,
    this.authorization,
    this.authorizationScopes,
    this.authorizerId,
    this.httpMethod,
    this.operationName,
    this.region,
    this.requestModels,
    this.requestParameters,
    this.requestValidatorId,
    this.resourceId,
    this.restApi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyRequired': ?apiKeyRequired,
      'authorization': ?authorization,
      'authorizationScopes': ?authorizationScopes,
      'authorizerId': ?authorizerId,
      'httpMethod': ?httpMethod,
      'operationName': ?operationName,
      'region': ?region,
      'requestModels': ?requestModels,
      'requestParameters': ?requestParameters,
      'requestValidatorId': ?requestValidatorId,
      'resourceId': ?resourceId,
      'restApi': ?restApi,
    };
  }

  factory MethodState.fromMap(Map<String, dynamic> map) {
    return MethodState(
      apiKeyRequired: map['apiKeyRequired'] == null ? null : (map['apiKeyRequired'] as bool).input(),
      authorization: map['authorization'] == null ? null : (map['authorization'] as String).input(),
      authorizationScopes: map['authorizationScopes'] == null ? null : ((map['authorizationScopes'] as List).cast<String>()).input(),
      authorizerId: map['authorizerId'] == null ? null : (map['authorizerId'] as String).input(),
      httpMethod: map['httpMethod'] == null ? null : (map['httpMethod'] as String).input(),
      operationName: map['operationName'] == null ? null : (map['operationName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      requestModels: map['requestModels'] == null ? null : ((map['requestModels'] as Map).cast<String, String>()).input(),
      requestParameters: map['requestParameters'] == null ? null : ((map['requestParameters'] as Map).cast<String, bool>()).input(),
      requestValidatorId: map['requestValidatorId'] == null ? null : (map['requestValidatorId'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      restApi: map['restApi'] == null ? null : (map['restApi'] as String).input(),
    );
  }
}

