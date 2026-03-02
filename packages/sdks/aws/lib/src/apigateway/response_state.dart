// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Response resources.
class ResponseState {
  /// Region where this resource will be managed. See the [AWS Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints) for supported values. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of parameters (paths, query strings and headers) of the Gateway Response.
  final pulumi.Input<Map<String, String>>? responseParameters;
  /// Map of templates used to transform the response body.
  final pulumi.Input<Map<String, String>>? responseTemplates;
  /// Response type of the associated GatewayResponse. See the [AWS Documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html) for supported values.
  final pulumi.Input<String>? responseType;
  /// String identifier of the associated REST API.
  final pulumi.Input<String>? restApiId;
  /// HTTP status code of the Gateway Response.
  final pulumi.Input<String>? statusCode;

  /// Creates a new [ResponseState].
  /// [region] Region where this resource will be managed. See the [AWS Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints) for supported values. Defaults to the Region set in the provider configuration.
  /// [responseParameters] Map of parameters (paths, query strings and headers) of the Gateway Response.
  /// [responseTemplates] Map of templates used to transform the response body.
  /// [responseType] Response type of the associated GatewayResponse. See the [AWS Documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html) for supported values.
  /// [restApiId] String identifier of the associated REST API.
  /// [statusCode] HTTP status code of the Gateway Response.
  ResponseState({
    this.region,
    this.responseParameters,
    this.responseTemplates,
    this.responseType,
    this.restApiId,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'responseParameters': ?responseParameters,
      'responseTemplates': ?responseTemplates,
      'responseType': ?responseType,
      'restApiId': ?restApiId,
      'statusCode': ?statusCode,
    };
  }

  factory ResponseState.fromMap(Map<String, dynamic> map) {
    return ResponseState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      responseParameters: map['responseParameters'] == null ? null : ((map['responseParameters'] as Map).cast<String, String>()).input(),
      responseTemplates: map['responseTemplates'] == null ? null : ((map['responseTemplates'] as Map).cast<String, String>()).input(),
      responseType: map['responseType'] == null ? null : (map['responseType'] as String).input(),
      restApiId: map['restApiId'] == null ? null : (map['restApiId'] as String).input(),
      statusCode: map['statusCode'] == null ? null : (map['statusCode'] as String).input(),
    );
  }
}

