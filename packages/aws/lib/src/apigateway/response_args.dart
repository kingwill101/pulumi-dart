// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_response_response_args_doc}
/// The set of arguments for Response.
/// {@endtemplate}
/// {@macro pulumi_apigateway_response_response_args_doc}
class ResponseArgs {
  /// Region where this resource will be managed. See the [AWS Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints) for supported values. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of parameters (paths, query strings and headers) of the Gateway Response.
  final pulumi.Input<Map<String, String>>? responseParameters;

  /// Map of templates used to transform the response body.
  final pulumi.Input<Map<String, String>>? responseTemplates;

  /// Response type of the associated GatewayResponse. See the [AWS Documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html) for supported values.
  final pulumi.Input<String> responseType;

  /// String identifier of the associated REST API.
  final pulumi.Input<String> restApiId;

  /// HTTP status code of the Gateway Response.
  final pulumi.Input<String>? statusCode;

  /// Creates a new [ResponseArgs].
  /// [region] Region where this resource will be managed. See the [AWS Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints) for supported values. Defaults to the Region set in the provider configuration.
  /// [responseParameters] Map of parameters (paths, query strings and headers) of the Gateway Response.
  /// [responseTemplates] Map of templates used to transform the response body.
  /// [responseType] Response type of the associated GatewayResponse. See the [AWS Documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html) for supported values.
  /// [restApiId] String identifier of the associated REST API.
  /// [statusCode] HTTP status code of the Gateway Response.
  ResponseArgs({
    String? region,
    Map<String, String>? responseParameters,
    Map<String, String>? responseTemplates,
    required String responseType,
    required String restApiId,
    String? statusCode,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        responseParameters = pulumi.Input.asOptionalInput<Map<String, String>>(
            responseParameters),
        responseTemplates = pulumi.Input.asOptionalInput<Map<String, String>>(
            responseTemplates),
        responseType = pulumi.Input.asInput<String>(responseType),
        restApiId = pulumi.Input.asInput<String>(restApiId),
        statusCode = pulumi.Input.asOptionalInput<String>(statusCode);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final responseParametersValue = responseParameters;
    if (responseParametersValue != null) {
      map['responseParameters'] = responseParametersValue;
    }
    final responseTemplatesValue = responseTemplates;
    if (responseTemplatesValue != null) {
      map['responseTemplates'] = responseTemplatesValue;
    }
    map['responseType'] = responseType;
    map['restApiId'] = restApiId;
    final statusCodeValue = statusCode;
    if (statusCodeValue != null) {
      map['statusCode'] = statusCodeValue;
    }
    return map;
  }

  factory ResponseArgs.fromMap(Map<String, dynamic> map) {
    return ResponseArgs(
      region: map['region'] == null ? null : map['region'] as String,
      responseParameters: map['responseParameters'] == null
          ? null
          : (map['responseParameters'] as Map).cast<String, String>(),
      responseTemplates: map['responseTemplates'] == null
          ? null
          : (map['responseTemplates'] as Map).cast<String, String>(),
      responseType: map['responseType'] as String,
      restApiId: map['restApiId'] as String,
      statusCode:
          map['statusCode'] == null ? null : map['statusCode'] as String,
    );
  }
}
