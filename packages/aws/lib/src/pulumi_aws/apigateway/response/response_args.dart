// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Response.
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

  ResponseArgs({
    this.region,
    this.responseParameters,
    this.responseTemplates,
    required this.responseType,
    required this.restApiId,
    this.statusCode,
  });

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
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      responseParameters: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['responseParameters']),
      responseTemplates: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['responseTemplates']),
      responseType: pulumi.Input.asInput<String>(map['responseType']),
      restApiId: pulumi.Input.asInput<String>(map['restApiId']),
      statusCode: pulumi.Input.asOptionalInput<String>(map['statusCode']),
    );
  }
}
