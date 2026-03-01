// ignore_for_file: unused_element, unnecessary_cast


/// Authorization header information.
class BackendAuthorizationHeaderCredentials {
  /// Authentication Parameter value.
  final String parameter;
  /// Authentication Scheme name.
  final String scheme;

  /// Creates a new [BackendAuthorizationHeaderCredentials].
  /// [parameter] Authentication Parameter value.
  /// [scheme] Authentication Scheme name.
  BackendAuthorizationHeaderCredentials({
    required this.parameter,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': parameter,
      'scheme': scheme,
    };
  }

  factory BackendAuthorizationHeaderCredentials.fromMap(Map<String, dynamic> map) {
    return BackendAuthorizationHeaderCredentials(
      parameter: map['parameter'] as String,
      scheme: map['scheme'] as String,
    );
  }
}

