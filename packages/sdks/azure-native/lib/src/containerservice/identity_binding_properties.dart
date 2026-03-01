// ignore_for_file: unused_element, unnecessary_cast

import 'identity_binding_managed_identity_profile.dart';

/// IdentityBinding properties.
class IdentityBindingProperties {
  /// Managed identity profile for the identity binding.
  final IdentityBindingManagedIdentityProfile managedIdentity;

  /// Creates a new [IdentityBindingProperties].
  /// [managedIdentity] Managed identity profile for the identity binding.
  IdentityBindingProperties({
    required this.managedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedIdentity': managedIdentity.toMap(),
    };
  }

  factory IdentityBindingProperties.fromMap(Map<String, dynamic> map) {
    return IdentityBindingProperties(
      managedIdentity: IdentityBindingManagedIdentityProfile.fromMap((map['managedIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

