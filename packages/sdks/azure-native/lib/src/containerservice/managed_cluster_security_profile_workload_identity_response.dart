// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Workload identity settings for the security profile.
class ManagedClusterSecurityProfileWorkloadIdentityResponse {
  /// Whether to enable workload identity.
  final pulumi.Input<bool>? enabled;

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
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

