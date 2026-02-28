// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_method_response_method_response_args_doc}
/// The set of arguments for MethodResponse.
/// {@endtemplate}
/// {@macro pulumi_apigateway_method_response_method_response_args_doc}
class MethodResponseArgs {
  /// The HTTP verb of the method resource (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  final pulumi.Input<String> httpMethod;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Resource identifier for the method resource.
  final pulumi.Input<String> resourceId;

  /// A map specifying the model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.
  final pulumi.Input<Map<String, String>>? responseModels;

  /// A map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a boolean flag indicating whether the method response parameter is required. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name.
  ///
  /// The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., '`application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `$` prefix.)
  final pulumi.Input<Map<String, bool>>? responseParameters;

  /// The string identifier of the associated REST API.
  final pulumi.Input<String> restApi;

  /// The method response's status code.
  final pulumi.Input<String> statusCode;

  /// Creates a new [MethodResponseArgs].
  /// [httpMethod] The HTTP verb of the method resource (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The Resource identifier for the method resource.
  /// [responseModels] A map specifying the model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.
  /// [responseParameters] A map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a boolean flag indicating whether the method response parameter is required. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name.
  /// [restApi] The string identifier of the associated REST API.
  /// [statusCode] The method response's status code.
  MethodResponseArgs({
    required String httpMethod,
    String? region,
    required String resourceId,
    Map<String, String>? responseModels,
    Map<String, bool>? responseParameters,
    required String restApi,
    required String statusCode,
  })  : httpMethod = pulumi.Input.asInput<String>(httpMethod),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceId = pulumi.Input.asInput<String>(resourceId),
        responseModels =
            pulumi.Input.asOptionalInput<Map<String, String>>(responseModels),
        responseParameters =
            pulumi.Input.asOptionalInput<Map<String, bool>>(responseParameters),
        restApi = pulumi.Input.asInput<String>(restApi),
        statusCode = pulumi.Input.asInput<String>(statusCode);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpMethod'] = httpMethod;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    final responseModelsValue = responseModels;
    if (responseModelsValue != null) {
      map['responseModels'] = responseModelsValue;
    }
    final responseParametersValue = responseParameters;
    if (responseParametersValue != null) {
      map['responseParameters'] = responseParametersValue;
    }
    map['restApi'] = restApi;
    map['statusCode'] = statusCode;
    return map;
  }

  factory MethodResponseArgs.fromMap(Map<String, dynamic> map) {
    return MethodResponseArgs(
      httpMethod: map['httpMethod'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceId: map['resourceId'] as String,
      responseModels: map['responseModels'] == null
          ? null
          : (map['responseModels'] as Map).cast<String, String>(),
      responseParameters: map['responseParameters'] == null
          ? null
          : (map['responseParameters'] as Map).cast<String, bool>(),
      restApi: map['restApi'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}
