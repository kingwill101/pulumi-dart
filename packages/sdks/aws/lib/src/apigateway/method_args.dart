// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_method_method_args_doc}
/// The set of arguments for Method.
/// {@endtemplate}
/// {@macro pulumi_apigateway_method_method_args_doc}
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
  /// Map of the API models used for the request's content type where key is the content type (e.g., `application/json`) and value is either `Error`, `Empty` (built-in models) or `aws.apigateway.Model`'s `name`.
  final pulumi.Input<Map<String, String>>? requestModels;
  /// Map of request parameters (from the path, query string and headers) that should be passed to the integration. The boolean value indicates whether the parameter is required (`true`) or optional (`false`). For example: `requestParameters = {"method.request.header.X-Some-Header" = true "method.request.querystring.some-query-param" = true}` would define that the header `X-Some-Header` and the query string `some-query-param` must be provided in the request.
  final pulumi.Input<Map<String, bool>>? requestParameters;
  /// ID of a `aws.apigateway.RequestValidator`
  final pulumi.Input<String>? requestValidatorId;
  /// API resource ID
  final pulumi.Input<String> resourceId;
  /// ID of the associated REST API
  final pulumi.Input<String> restApi;

  /// Creates a new [MethodArgs].
  /// [apiKeyRequired] Specify if the method requires an API key
  /// [authorization] Type of authorization used for the method (`NONE`, `CUSTOM`, `AWS_IAM`, `COGNITO_USER_POOLS`)
  /// [authorizationScopes] Authorization scopes used when the authorization is `COGNITO_USER_POOLS`
  /// [authorizerId] Authorizer id to be used when the authorization is `CUSTOM` or `COGNITO_USER_POOLS`
  /// [httpMethod] HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`)
  /// [operationName] Function name that will be given to the method when generating an SDK through API Gateway. If omitted, API Gateway will generate a function name based on the resource path and HTTP verb.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestModels] Map of the API models used for the request's content type where key is the content type (e.g., `application/json`) and value is either `Error`, `Empty` (built-in models) or `aws.apigateway.Model`'s `name`.
  /// [requestParameters] Map of request parameters (from the path, query string and headers) that should be passed to the integration. The boolean value indicates whether the parameter is required (`true`) or optional (`false`). For example: `requestParameters = {"method.request.header.X-Some-Header" = true "method.request.querystring.some-query-param" = true}` would define that the header `X-Some-Header` and the query string `some-query-param` must be provided in the request.
  /// [requestValidatorId] ID of a `aws.apigateway.RequestValidator`
  /// [resourceId] API resource ID
  /// [restApi] ID of the associated REST API
  const MethodArgs({
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
    return <String, dynamic>{
      'apiKeyRequired': ?apiKeyRequired,
      'authorization': authorization,
      'authorizationScopes': ?authorizationScopes,
      'authorizerId': ?authorizerId,
      'httpMethod': httpMethod,
      'operationName': ?operationName,
      'region': ?region,
      'requestModels': ?requestModels,
      'requestParameters': ?requestParameters,
      'requestValidatorId': ?requestValidatorId,
      'resourceId': resourceId,
      'restApi': restApi,
    };
  }

  factory MethodArgs.fromMap(Map<String, dynamic> map) {
    return MethodArgs(
      apiKeyRequired: (() { final guardedValue = map['apiKeyRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      authorization: pulumi.Input.fromValue(map['authorization'] as String),
      authorizationScopes: (() { final guardedValue = map['authorizationScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authorizerId: (() { final guardedValue = map['authorizerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpMethod: pulumi.Input.fromValue(map['httpMethod'] as String),
      operationName: (() { final guardedValue = map['operationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestModels: (() { final guardedValue = map['requestModels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requestParameters: (() { final guardedValue = map['requestParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      requestValidatorId: (() { final guardedValue = map['requestValidatorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      restApi: pulumi.Input.fromValue(map['restApi'] as String),
    );
  }
}
