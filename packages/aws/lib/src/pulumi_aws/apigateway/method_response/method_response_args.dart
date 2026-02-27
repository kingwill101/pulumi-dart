// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MethodResponse.
class MethodResponseArgs {
  /// The HTTP verb of the method resource (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  final Input<String> httpMethod;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Resource identifier for the method resource.
  final Input<String> resourceId;

  /// A map specifying the model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.
  final Input<Map<String, String>>? responseModels;

  /// A map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a boolean flag indicating whether the method response parameter is required. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name.
  ///
  /// The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., '`application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `$` prefix.)
  final Input<Map<String, bool>>? responseParameters;

  /// The string identifier of the associated REST API.
  final Input<String> restApi;

  /// The method response's status code.
  final Input<String> statusCode;

  MethodResponseArgs({
    required this.httpMethod,
    this.region,
    required this.resourceId,
    this.responseModels,
    this.responseParameters,
    required this.restApi,
    required this.statusCode,
  });

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
      httpMethod: Input.asInput<String>(map['httpMethod']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceId: Input.asInput<String>(map['resourceId']),
      responseModels:
          Input.asOptionalInput<Map<String, String>>(map['responseModels']),
      responseParameters:
          Input.asOptionalInput<Map<String, bool>>(map['responseParameters']),
      restApi: Input.asInput<String>(map['restApi']),
      statusCode: Input.asInput<String>(map['statusCode']),
    );
  }
}
