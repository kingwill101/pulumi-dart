// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_binding_managed_identity_profile.dart';

/// IdentityBinding properties.
class IdentityBindingProperties {
  /// Managed identity profile for the identity binding.
  final pulumi.Input<IdentityBindingManagedIdentityProfile> managedIdentity;

  /// Creates a new [IdentityBindingProperties].
  /// [managedIdentity] Managed identity profile for the identity binding.
  const IdentityBindingProperties({
    required this.managedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedIdentity': pulumi.Input.mapInputValue<IdentityBindingManagedIdentityProfile, Map<String, dynamic>>(managedIdentity, (value) => value.toMap()),
    };
  }

  factory IdentityBindingProperties.fromMap(Map<String, dynamic> map) {
    return IdentityBindingProperties(
      managedIdentity: pulumi.Input.fromValue(IdentityBindingManagedIdentityProfile.fromMap((map['managedIdentity']! as Map).cast<String, dynamic>())),
    );
  }
}
