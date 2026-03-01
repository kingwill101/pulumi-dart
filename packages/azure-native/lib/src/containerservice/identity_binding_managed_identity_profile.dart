// ignore_for_file: unused_element, unnecessary_cast


/// Managed identity profile for the identity binding.
class IdentityBindingManagedIdentityProfile {
  /// The resource ID of the managed identity.
  final String resourceId;

  /// Creates a new [IdentityBindingManagedIdentityProfile].
  /// [resourceId] The resource ID of the managed identity.
  IdentityBindingManagedIdentityProfile({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory IdentityBindingManagedIdentityProfile.fromMap(Map<String, dynamic> map) {
    return IdentityBindingManagedIdentityProfile(
      resourceId: map['resourceId'] as String,
    );
  }
}

