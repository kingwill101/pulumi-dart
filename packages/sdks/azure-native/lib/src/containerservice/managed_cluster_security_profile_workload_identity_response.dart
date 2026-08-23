// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Workload identity settings for the security profile.
class ManagedClusterSecurityProfileWorkloadIdentityResponse {
  /// Whether to enable workload identity.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterSecurityProfileWorkloadIdentityResponse].
  /// [enabled] Whether to enable workload identity.
  const ManagedClusterSecurityProfileWorkloadIdentityResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterSecurityProfileWorkloadIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSecurityProfileWorkloadIdentityResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
