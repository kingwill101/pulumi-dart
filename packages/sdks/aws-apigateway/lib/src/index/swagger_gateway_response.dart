// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SwaggerGatewayResponse {
  final pulumi.Input<Map<String, String>>? responseParameters;
  final pulumi.Input<Map<String, String>>? responseTemplates;
  final pulumi.Input<double>? statusCode;

  /// Creates a new [SwaggerGatewayResponse].
  /// [responseParameters] Optional.
  /// [responseTemplates] Optional.
  /// [statusCode] Optional.
  SwaggerGatewayResponse({
    this.responseParameters,
    this.responseTemplates,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseParameters': ?responseParameters,
      'responseTemplates': ?responseTemplates,
      'statusCode': ?statusCode,
    };
  }

  factory SwaggerGatewayResponse.fromMap(Map<String, dynamic> map) {
    return SwaggerGatewayResponse(
      responseParameters: (() {
        final guardedValue = map['responseParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      responseTemplates: (() {
        final guardedValue = map['responseTemplates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      statusCode: (() {
        final guardedValue = map['statusCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
