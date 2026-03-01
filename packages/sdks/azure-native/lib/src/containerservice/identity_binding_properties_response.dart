// ignore_for_file: unused_element, unnecessary_cast

import 'identity_binding_managed_identity_profile_response.dart';
import 'identity_binding_oidc_issuer_profile_response.dart';

/// IdentityBinding properties.
class IdentityBindingPropertiesResponse {
  /// Managed identity profile for the identity binding.
  final IdentityBindingManagedIdentityProfileResponse managedIdentity;
  /// The OIDC issuer URL of the IdentityBinding.
  final IdentityBindingOidcIssuerProfileResponse oidcIssuer;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [IdentityBindingPropertiesResponse].
  /// [managedIdentity] Managed identity profile for the identity binding.
  /// [oidcIssuer] The OIDC issuer URL of the IdentityBinding.
  /// [provisioningState] The status of the last operation.
  IdentityBindingPropertiesResponse({
    required this.managedIdentity,
    required this.oidcIssuer,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedIdentity': managedIdentity.toMap(),
      'oidcIssuer': oidcIssuer.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory IdentityBindingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IdentityBindingPropertiesResponse(
      managedIdentity: IdentityBindingManagedIdentityProfileResponse.fromMap((map['managedIdentity'] as Map).cast<String, dynamic>()),
      oidcIssuer: IdentityBindingOidcIssuerProfileResponse.fromMap((map['oidcIssuer'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

