// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_binding_managed_identity_profile_response.dart';
import 'identity_binding_oidc_issuer_profile_response.dart';

/// IdentityBinding properties.
class IdentityBindingPropertiesResponse {
  /// Managed identity profile for the identity binding.
  final pulumi.Input<IdentityBindingManagedIdentityProfileResponse> managedIdentity;
  /// The OIDC issuer URL of the IdentityBinding.
  final pulumi.Input<IdentityBindingOidcIssuerProfileResponse> oidcIssuer;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [IdentityBindingPropertiesResponse].
  /// [managedIdentity] Managed identity profile for the identity binding.
  /// [oidcIssuer] The OIDC issuer URL of the IdentityBinding.
  /// [provisioningState] The status of the last operation.
  const IdentityBindingPropertiesResponse({
    required this.managedIdentity,
    required this.oidcIssuer,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedIdentity': pulumi.Input.mapInputValue<IdentityBindingManagedIdentityProfileResponse, Map<String, dynamic>>(managedIdentity, (value) => value.toMap()),
      'oidcIssuer': pulumi.Input.mapInputValue<IdentityBindingOidcIssuerProfileResponse, Map<String, dynamic>>(oidcIssuer, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory IdentityBindingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IdentityBindingPropertiesResponse(
      managedIdentity: pulumi.Input.fromValue(IdentityBindingManagedIdentityProfileResponse.fromMap((map['managedIdentity']! as Map).cast<String, dynamic>())),
      oidcIssuer: pulumi.Input.fromValue(IdentityBindingOidcIssuerProfileResponse.fromMap((map['oidcIssuer']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

