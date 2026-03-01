// ignore_for_file: unused_element, unnecessary_cast


class GetServiceAuthenticationConfiguration {
  /// The intended audience to receive authentication tokens for the service.
  final String audience;
  /// The Azure Active Directory (tenant) that serves as the authentication authority to access the service.
  final String authority;
  /// Is the 'SMART on FHIR' option for mobile and web implementations enabled?
  final bool smartProxyEnabled;

  /// Creates a new [GetServiceAuthenticationConfiguration].
  /// [audience] The intended audience to receive authentication tokens for the service.
  /// [authority] The Azure Active Directory (tenant) that serves as the authentication authority to access the service.
  /// [smartProxyEnabled] Is the 'SMART on FHIR' option for mobile and web implementations enabled?
  GetServiceAuthenticationConfiguration({
    required this.audience,
    required this.authority,
    required this.smartProxyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'authority': authority,
      'smartProxyEnabled': smartProxyEnabled,
    };
  }

  factory GetServiceAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceAuthenticationConfiguration(
      audience: map['audience'] as String,
      authority: map['authority'] as String,
      smartProxyEnabled: map['smartProxyEnabled'] as bool,
    );
  }
}

