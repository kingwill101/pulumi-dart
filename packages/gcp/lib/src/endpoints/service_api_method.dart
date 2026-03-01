// ignore_for_file: unused_element, unnecessary_cast


class ServiceApiMethod {
  /// The simple name of the endpoint as described in the config.
  final String? name;
  /// The type URL for the request to this API.
  final String? requestType;
  /// The type URL for the response from this API.
  final String? responseType;
  /// `SYNTAX_PROTO2` or `SYNTAX_PROTO3`.
  final String? syntax;

  /// Creates a new [ServiceApiMethod].
  /// [name] The simple name of the endpoint as described in the config.
  /// [requestType] The type URL for the request to this API.
  /// [responseType] The type URL for the response from this API.
  /// [syntax] `SYNTAX_PROTO2` or `SYNTAX_PROTO3`.
  ServiceApiMethod({
    this.name,
    this.requestType,
    this.responseType,
    this.syntax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'requestType': ?requestType,
      'responseType': ?responseType,
      'syntax': ?syntax,
    };
  }

  factory ServiceApiMethod.fromMap(Map<String, dynamic> map) {
    return ServiceApiMethod(
      name: map['name'] == null ? null : map['name'] as String,
      requestType: map['requestType'] == null ? null : map['requestType'] as String,
      responseType: map['responseType'] == null ? null : map['responseType'] as String,
      syntax: map['syntax'] == null ? null : map['syntax'] as String,
    );
  }
}

