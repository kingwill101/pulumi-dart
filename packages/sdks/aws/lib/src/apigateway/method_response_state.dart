// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MethodResponse resources.
class MethodResponseState {
  /// HTTP verb of the method resource (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  final pulumi.Input<String?>? httpMethod;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Resource identifier for the method resource.
  final pulumi.Input<String?>? resourceId;
  /// Map specifying the model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.
  final pulumi.Input<Map<String, String>?>? responseModels;
  /// Map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a boolean flag indicating whether the method response parameter is required. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., '`application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `$` prefix.)
  final pulumi.Input<Map<String, bool>?>? responseParameters;
  /// String identifier of the associated REST API.
  final pulumi.Input<dynamic>? restApi;
  /// Method response's status code.
  final pulumi.Input<String?>? statusCode;

  /// Creates a new [MethodResponseState].
  /// [httpMethod] HTTP verb of the method resource (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Resource identifier for the method resource.
  /// [responseModels] Map specifying the model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.
  /// [responseParameters] Map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a boolean flag indicating whether the method response parameter is required. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., '`application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `$` prefix.)
  /// [restApi] String identifier of the associated REST API.
  /// [statusCode] Method response's status code.
  const MethodResponseState({
    this.httpMethod,
    this.region,
    this.resourceId,
    this.responseModels,
    this.responseParameters,
    this.restApi,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpMethod': ?httpMethod,
      'region': ?region,
      'resourceId': ?resourceId,
      'responseModels': ?responseModels,
      'responseParameters': ?responseParameters,
      'restApi': ?restApi,
      'statusCode': ?statusCode,
    };
  }

  factory MethodResponseState.fromMap(Map<String, dynamic> map) {
    return MethodResponseState(
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseModels: (() { final guardedValue = map['responseModels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      responseParameters: (() { final guardedValue = map['responseParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      restApi: (() { final guardedValue = map['restApi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
