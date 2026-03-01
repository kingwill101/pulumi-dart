// ignore_for_file: unused_element, unnecessary_cast


class GetFhirServiceAuthentication {
  /// The intended audience to receive authentication tokens for the service. The default value is `https://<name>.fhir.azurehealthcareapis.com`.
  final String audience;
  /// The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform.
  /// Authority must be registered to Azure AD and in the following format: <https://{Azure-AD-endpoint}/{tenant-id>}.
  final String authority;
  final bool smartProxyEnabled;

  /// Creates a new [GetFhirServiceAuthentication].
  /// [audience] The intended audience to receive authentication tokens for the service. The default value is `https://<name>.fhir.azurehealthcareapis.com`.
  /// [authority] The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform.
  /// [smartProxyEnabled] Required.
  GetFhirServiceAuthentication({
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

  factory GetFhirServiceAuthentication.fromMap(Map<String, dynamic> map) {
    return GetFhirServiceAuthentication(
      audience: map['audience'] as String,
      authority: map['authority'] as String,
      smartProxyEnabled: map['smartProxyEnabled'] as bool,
    );
  }
}

