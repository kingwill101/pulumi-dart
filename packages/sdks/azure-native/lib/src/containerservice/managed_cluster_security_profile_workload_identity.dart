// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Workload identity settings for the security profile.
class ManagedClusterSecurityProfileWorkloadIdentity {
  /// Whether to enable workload identity.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterSecurityProfileWorkloadIdentity].
  /// [enabled] Whether to enable workload identity.
  const ManagedClusterSecurityProfileWorkloadIdentity({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterSecurityProfileWorkloadIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSecurityProfileWorkloadIdentity(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
