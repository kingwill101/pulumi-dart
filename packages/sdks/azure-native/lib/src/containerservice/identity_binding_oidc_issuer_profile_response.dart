// ignore_for_file: unused_element, unnecessary_cast


/// IdentityBinding OIDC issuer profile.
class IdentityBindingOidcIssuerProfileResponse {
  /// The OIDC issuer URL of the IdentityBinding.
  final String oidcIssuerUrl;

  /// Creates a new [IdentityBindingOidcIssuerProfileResponse].
  /// [oidcIssuerUrl] The OIDC issuer URL of the IdentityBinding.
  IdentityBindingOidcIssuerProfileResponse({
    required this.oidcIssuerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oidcIssuerUrl': oidcIssuerUrl,
    };
  }

  factory IdentityBindingOidcIssuerProfileResponse.fromMap(Map<String, dynamic> map) {
    return IdentityBindingOidcIssuerProfileResponse(
      oidcIssuerUrl: map['oidcIssuerUrl'] as String,
    );
  }
}

