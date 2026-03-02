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
      responseParameters: map['responseParameters'] == null ? null : ((map['responseParameters']! as Map).cast<String, String>()).input(),
      responseTemplates: map['responseTemplates'] == null ? null : ((map['responseTemplates']! as Map).cast<String, String>()).input(),
      statusCode: map['statusCode'] == null ? null : (map['statusCode']! as double).input(),
    );
  }
}

