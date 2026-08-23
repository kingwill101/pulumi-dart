// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationResponseParameter {
  /// Key-value map. The key of this map identifies the location of the request parameter to change, and how to change it. The corresponding value specifies the new data for the parameter. See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html) for details.
  final pulumi.Input<Map<String, String>> mappings;
  /// HTTP status code in the range 200-599.
  final pulumi.Input<String> statusCode;

  /// Creates a new [IntegrationResponseParameter].
  /// [mappings] Key-value map. The key of this map identifies the location of the request parameter to change, and how to change it. The corresponding value specifies the new data for the parameter. See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html) for details.
  /// [statusCode] HTTP status code in the range 200-599.
  const IntegrationResponseParameter({
    required this.mappings,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mappings': mappings,
      'statusCode': statusCode,
    };
  }

  factory IntegrationResponseParameter.fromMap(Map<String, dynamic> map) {
    return IntegrationResponseParameter(
      mappings: pulumi.Input.fromValue((map['mappings'] as Map).cast<String, String>()),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}
