// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IdentityBinding OIDC issuer profile.
class IdentityBindingOidcIssuerProfileResponse {
  /// The OIDC issuer URL of the IdentityBinding.
  final pulumi.Input<String> oidcIssuerUrl;

  /// Creates a new [IdentityBindingOidcIssuerProfileResponse].
  /// [oidcIssuerUrl] The OIDC issuer URL of the IdentityBinding.
  IdentityBindingOidcIssuerProfileResponse({required this.oidcIssuerUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'oidcIssuerUrl': oidcIssuerUrl};
  }

  factory IdentityBindingOidcIssuerProfileResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentityBindingOidcIssuerProfileResponse(
      oidcIssuerUrl: pulumi.Input.fromValue(map['oidcIssuerUrl'] as String),
    );
  }
}
