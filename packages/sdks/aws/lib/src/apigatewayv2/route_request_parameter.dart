// ignore_for_file: unused_element, unnecessary_cast


class RouteRequestParameter {
  /// Request parameter key. This is a [request data mapping parameter](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-data-mapping.html#websocket-mapping-request-parameters).
  final String requestParameterKey;
  /// Boolean whether or not the parameter is required.
  final bool required;

  /// Creates a new [RouteRequestParameter].
  /// [requestParameterKey] Request parameter key. This is a [request data mapping parameter](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-data-mapping.html#websocket-mapping-request-parameters).
  /// [required] Boolean whether or not the parameter is required.
  RouteRequestParameter({
    required this.requestParameterKey,
    required this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestParameterKey': requestParameterKey,
      'required': required,
    };
  }

  factory RouteRequestParameter.fromMap(Map<String, dynamic> map) {
    return RouteRequestParameter(
      requestParameterKey: map['requestParameterKey'] as String,
      required: map['required'] as bool,
    );
  }
}

