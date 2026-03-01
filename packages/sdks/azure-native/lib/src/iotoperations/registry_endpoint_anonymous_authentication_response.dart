// ignore_for_file: unused_element, unnecessary_cast


/// Anonymous authentication
class RegistryEndpointAnonymousAuthenticationResponse {
  /// Anonymous authentication properties
  final dynamic anonymousSettings;
  /// The authentication method.
  /// Expected value is 'Anonymous'.
  final String method;

  /// Creates a new [RegistryEndpointAnonymousAuthenticationResponse].
  /// [anonymousSettings] Anonymous authentication properties
  /// [method] The authentication method.
  RegistryEndpointAnonymousAuthenticationResponse({
    required this.anonymousSettings,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousSettings': anonymousSettings,
      'method': method,
    };
  }

  factory RegistryEndpointAnonymousAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointAnonymousAuthenticationResponse(
      anonymousSettings: map['anonymousSettings'],
      method: map['method'] as String,
    );
  }
}

