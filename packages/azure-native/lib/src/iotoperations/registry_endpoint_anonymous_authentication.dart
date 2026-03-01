// ignore_for_file: unused_element, unnecessary_cast


/// Anonymous authentication
class RegistryEndpointAnonymousAuthentication {
  /// Anonymous authentication properties
  final dynamic anonymousSettings;
  /// The authentication method.
  /// Expected value is 'Anonymous'.
  final String method;

  /// Creates a new [RegistryEndpointAnonymousAuthentication].
  /// [anonymousSettings] Anonymous authentication properties
  /// [method] The authentication method.
  RegistryEndpointAnonymousAuthentication({
    required this.anonymousSettings,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousSettings': anonymousSettings,
      'method': method,
    };
  }

  factory RegistryEndpointAnonymousAuthentication.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointAnonymousAuthentication(
      anonymousSettings: map['anonymousSettings'],
      method: map['method'] as String,
    );
  }
}

