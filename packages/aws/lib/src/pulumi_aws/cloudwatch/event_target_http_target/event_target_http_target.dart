// ignore_for_file: unused_element, unnecessary_cast

class EventTargetHttpTarget {
  /// Enables you to specify HTTP headers to add to the request.
  final Map<String, String>? headerParameters;

  /// The list of values that correspond sequentially to any path variables in your endpoint ARN (for example `arn:aws:execute-api:us-east-1:123456:myapi/*/POST/pets/*`).
  final List<String>? pathParameterValues;

  /// Represents keys/values of query string parameters that are appended to the invoked endpoint.
  final Map<String, String>? queryStringParameters;

  EventTargetHttpTarget({
    this.headerParameters,
    this.pathParameterValues,
    this.queryStringParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerParametersValue = headerParameters;
    if (headerParametersValue != null) {
      map['headerParameters'] = headerParametersValue;
    }
    final pathParameterValuesValue = pathParameterValues;
    if (pathParameterValuesValue != null) {
      map['pathParameterValues'] = pathParameterValuesValue;
    }
    final queryStringParametersValue = queryStringParameters;
    if (queryStringParametersValue != null) {
      map['queryStringParameters'] = queryStringParametersValue;
    }
    return map;
  }

  factory EventTargetHttpTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetHttpTarget(
      headerParameters: map['headerParameters'] == null
          ? null
          : (map['headerParameters'] as Map).cast<String, String>(),
      pathParameterValues: map['pathParameterValues'] == null
          ? null
          : (map['pathParameterValues'] as List).cast<String>(),
      queryStringParameters: map['queryStringParameters'] == null
          ? null
          : (map['queryStringParameters'] as Map).cast<String, String>(),
    );
  }
}
