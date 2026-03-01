// ignore_for_file: unused_element, unnecessary_cast


/// Workload identity settings for the security profile.
class ManagedClusterSecurityProfileWorkloadIdentity {
  /// Whether to enable workload identity.
  final bool? enabled;

  /// Creates a new [ManagedClusterSecurityProfileWorkloadIdentity].
  /// [enabled] Whether to enable workload identity.
  ManagedClusterSecurityProfileWorkloadIdentity({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterSecurityProfileWorkloadIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSecurityProfileWorkloadIdentity(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

