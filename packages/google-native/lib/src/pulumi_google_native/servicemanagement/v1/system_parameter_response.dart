// ignore_for_file: unused_element, unnecessary_cast

/// Define a parameter's name and location. The parameter may be passed as either an HTTP header or a URL query parameter, and if both are passed the behavior is implementation-dependent.
class SystemParameterResponse {
  /// Define the HTTP header name to use for the parameter. It is case insensitive.
  final String httpHeader;

  /// Define the name of the parameter, such as "api_key" . It is case sensitive.
  final String name;

  /// Define the URL query parameter name to use for the parameter. It is case sensitive.
  final String urlQueryParameter;

  SystemParameterResponse({
    required this.httpHeader,
    required this.name,
    required this.urlQueryParameter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpHeader'] = httpHeader;
    map['name'] = name;
    map['urlQueryParameter'] = urlQueryParameter;
    return map;
  }

  factory SystemParameterResponse.fromMap(Map<String, dynamic> map) {
    return SystemParameterResponse(
      httpHeader: map['httpHeader'] as String,
      name: map['name'] as String,
      urlQueryParameter: map['urlQueryParameter'] as String,
    );
  }
}
