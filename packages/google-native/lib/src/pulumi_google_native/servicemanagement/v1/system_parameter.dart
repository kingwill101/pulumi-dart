// ignore_for_file: unused_element, unnecessary_cast

/// Define a parameter's name and location. The parameter may be passed as either an HTTP header or a URL query parameter, and if both are passed the behavior is implementation-dependent.
class SystemParameter {
  /// Define the HTTP header name to use for the parameter. It is case insensitive.
  final String? httpHeader;

  /// Define the name of the parameter, such as "api_key" . It is case sensitive.
  final String? name;

  /// Define the URL query parameter name to use for the parameter. It is case sensitive.
  final String? urlQueryParameter;

  SystemParameter({
    this.httpHeader,
    this.name,
    this.urlQueryParameter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpHeaderValue = httpHeader;
    if (httpHeaderValue != null) {
      map['httpHeader'] = httpHeaderValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final urlQueryParameterValue = urlQueryParameter;
    if (urlQueryParameterValue != null) {
      map['urlQueryParameter'] = urlQueryParameterValue;
    }
    return map;
  }

  factory SystemParameter.fromMap(Map<String, dynamic> map) {
    return SystemParameter(
      httpHeader:
          map['httpHeader'] == null ? null : map['httpHeader'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      urlQueryParameter: map['urlQueryParameter'] == null
          ? null
          : map['urlQueryParameter'] as String,
    );
  }
}
