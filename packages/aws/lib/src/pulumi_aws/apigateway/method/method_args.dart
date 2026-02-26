// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Method.
class MethodArgs {
  /// Specify if the method requires an API key
  final Input<bool>? apiKeyRequired;

  /// Type of authorization used for the method (`NONE`, `CUSTOM`, `AWS_IAM`, `COGNITO_USER_POOLS`)
  final Input<String> authorization;

  /// Authorization scopes used when the authorization is `COGNITO_USER_POOLS`
  final Input<List<String>>? authorizationScopes;

  /// Authorizer id to be used when the authorization is `CUSTOM` or `COGNITO_USER_POOLS`
  final Input<String>? authorizerId;

  /// HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`)
  final Input<String> httpMethod;

  /// Function name that will be given to the method when generating an SDK through API Gateway. If omitted, API Gateway will generate a function name based on the resource path and HTTP verb.
  final Input<String>? operationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of the API models used for the request's content type
  /// where key is the content type (e.g., `application/json`)
  /// and value is either `Error`, `Empty` (built-in models) or <span pulumi-lang-nodejs="`aws.apigateway.Model`" pulumi-lang-dotnet="`aws.apigateway.Model`" pulumi-lang-go="`apigateway.Model`" pulumi-lang-python="`apigateway.Model`" pulumi-lang-yaml="`aws.apigateway.Model`" pulumi-lang-java="`aws.apigateway.Model`">`aws.apigateway.Model`</span>'s <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<Map<String, String>>? requestModels;

  /// Map of request parameters (from the path, query string and headers) that should be passed to the integration. The boolean value indicates whether the parameter is required (<span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>) or optional (<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>).
  /// For example: <span pulumi-lang-nodejs="`requestParameters " pulumi-lang-dotnet="`RequestParameters " pulumi-lang-go="`requestParameters " pulumi-lang-python="`request_parameters " pulumi-lang-yaml="`requestParameters " pulumi-lang-java="`requestParameters ">`request_parameters </span>= {"method.request.header.X-Some-Header" = true "method.request.querystring.some-query-param" = true}` would define that the header `X-Some-Header` and the query string `some-query-param` must be provided in the request.
  final Input<Map<String, bool>>? requestParameters;

  /// ID of a <span pulumi-lang-nodejs="`aws.apigateway.RequestValidator`" pulumi-lang-dotnet="`aws.apigateway.RequestValidator`" pulumi-lang-go="`apigateway.RequestValidator`" pulumi-lang-python="`apigateway.RequestValidator`" pulumi-lang-yaml="`aws.apigateway.RequestValidator`" pulumi-lang-java="`aws.apigateway.RequestValidator`">`aws.apigateway.RequestValidator`</span>
  final Input<String>? requestValidatorId;

  /// API resource ID
  final Input<String> resourceId;

  /// ID of the associated REST API
  final Input<String> restApi;

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
      apiKeyRequired: Input.asOptionalInput<bool>(map['apiKeyRequired']),
      authorization: Input.asInput<String>(map['authorization']),
      authorizationScopes:
          Input.asOptionalInput<List<String>>(map['authorizationScopes']),
      authorizerId: Input.asOptionalInput<String>(map['authorizerId']),
      httpMethod: Input.asInput<String>(map['httpMethod']),
      operationName: Input.asOptionalInput<String>(map['operationName']),
      region: Input.asOptionalInput<String>(map['region']),
      requestModels:
          Input.asOptionalInput<Map<String, String>>(map['requestModels']),
      requestParameters:
          Input.asOptionalInput<Map<String, bool>>(map['requestParameters']),
      requestValidatorId:
          Input.asOptionalInput<String>(map['requestValidatorId']),
      resourceId: Input.asInput<String>(map['resourceId']),
      restApi: Input.asInput<String>(map['restApi']),
    );
  }
}
