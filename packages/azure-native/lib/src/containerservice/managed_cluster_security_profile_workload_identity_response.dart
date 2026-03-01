// ignore_for_file: unused_element, unnecessary_cast


/// Workload identity settings for the security profile.
class ManagedClusterSecurityProfileWorkloadIdentityResponse {
  /// Whether to enable workload identity.
  final bool? enabled;

  /// Creates a new [ManagedClusterSecurityProfileWorkloadIdentityResponse].
  /// [enabled] Whether to enable workload identity.
  ManagedClusterSecurityProfileWorkloadIdentityResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterSecurityProfileWorkloadIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSecurityProfileWorkloadIdentityResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

