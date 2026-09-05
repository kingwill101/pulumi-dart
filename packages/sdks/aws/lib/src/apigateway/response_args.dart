// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_response_response_args_doc}
/// The set of arguments for Response.
/// {@endtemplate}
/// {@macro pulumi_apigateway_response_response_args_doc}
class ResponseArgs {
  /// Region where this resource will be managed. See the [AWS Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints) for supported values. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of parameters (paths, query strings and headers) of the Gateway Response.
  final pulumi.Input<Map<String, String>?>? responseParameters;
  /// Map of templates used to transform the response body.
  final pulumi.Input<Map<String, String>?>? responseTemplates;
  /// Response type of the associated GatewayResponse. See the [AWS Documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html) for supported values.
  final pulumi.Input<String> responseType;
  /// String identifier of the associated REST API.
  final pulumi.Input<String> restApiId;
  /// HTTP status code of the Gateway Response.
  final pulumi.Input<String?>? statusCode;

  /// Creates a new [ResponseArgs].
  /// [region] Region where this resource will be managed. See the [AWS Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints) for supported values. Defaults to the Region set in the provider configuration.
  /// [responseParameters] Map of parameters (paths, query strings and headers) of the Gateway Response.
  /// [responseTemplates] Map of templates used to transform the response body.
  /// [responseType] Response type of the associated GatewayResponse. See the [AWS Documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html) for supported values.
  /// [restApiId] String identifier of the associated REST API.
  /// [statusCode] HTTP status code of the Gateway Response.
  const ResponseArgs({
    this.region,
    this.responseParameters,
    this.responseTemplates,
    required this.responseType,
    required this.restApiId,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'responseParameters': ?responseParameters,
      'responseTemplates': ?responseTemplates,
      'responseType': responseType,
      'restApiId': restApiId,
      'statusCode': ?statusCode,
    };
  }

  factory ResponseArgs.fromMap(Map<String, dynamic> map) {
    return ResponseArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseParameters: (() { final guardedValue = map['responseParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      responseTemplates: (() { final guardedValue = map['responseTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      responseType: pulumi.Input.fromValue(map['responseType'] as String),
      restApiId: pulumi.Input.fromValue(map['restApiId'] as String),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
