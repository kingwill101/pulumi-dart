// ignore_for_file: unused_element, unnecessary_cast


/// Authentication configuration information
class ServiceAuthenticationConfigurationInfoResponse {
  /// The audience url for the service
  final String? audience;
  /// The authority url for the service
  final String? authority;
  /// If the SMART on FHIR proxy is enabled
  final bool? smartProxyEnabled;

  /// Creates a new [ServiceAuthenticationConfigurationInfoResponse].
  /// [audience] The audience url for the service
  /// [authority] The authority url for the service
  /// [smartProxyEnabled] If the SMART on FHIR proxy is enabled
  ServiceAuthenticationConfigurationInfoResponse({
    this.audience,
    this.authority,
    this.smartProxyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'authority': ?authority,
      'smartProxyEnabled': ?smartProxyEnabled,
    };
  }

  factory ServiceAuthenticationConfigurationInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAuthenticationConfigurationInfoResponse(
      audience: map['audience'] == null ? null : map['audience'] as String,
      authority: map['authority'] == null ? null : map['authority'] as String,
      smartProxyEnabled: map['smartProxyEnabled'] == null ? null : map['smartProxyEnabled'] as bool,
    );
  }
}

