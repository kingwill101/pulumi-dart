// ignore_for_file: unused_element, unnecessary_cast


class ApiDestinationHttpApiParameters {
  /// The endpoint of the API destination.
  final String endpoint;
  /// The HTTP request method. Valid values: `GET`, `POST`, `HEAD`, `DELETE`, `PUT`, `PATCH`.
  final String method;

  /// Creates a new [ApiDestinationHttpApiParameters].
  /// [endpoint] The endpoint of the API destination.
  /// [method] The HTTP request method. Valid values: `GET`, `POST`, `HEAD`, `DELETE`, `PUT`, `PATCH`.
  ApiDestinationHttpApiParameters({
    required this.endpoint,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'method': method,
    };
  }

  factory ApiDestinationHttpApiParameters.fromMap(Map<String, dynamic> map) {
    return ApiDestinationHttpApiParameters(
      endpoint: map['endpoint'] as String,
      method: map['method'] as String,
    );
  }
}

