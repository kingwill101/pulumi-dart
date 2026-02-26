// ignore_for_file: unused_element, unnecessary_cast

class IntegrationResponseParameter {
  /// Key-value map. The key of this map identifies the location of the request parameter to change, and how to change it. The corresponding value specifies the new data for the parameter.
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html) for details.
  final Map<String, String> mappings;

  /// HTTP status code in the range 200-599.
  final String statusCode;

  IntegrationResponseParameter({
    required this.mappings,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mappings'] = mappings;
    map['statusCode'] = statusCode;
    return map;
  }

  factory IntegrationResponseParameter.fromMap(Map<String, dynamic> map) {
    return IntegrationResponseParameter(
      mappings: (map['mappings'] as Map).cast<String, String>(),
      statusCode: map['statusCode'] as String,
    );
  }
}
