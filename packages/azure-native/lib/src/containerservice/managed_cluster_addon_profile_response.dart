// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_addon_profile_response_identity.dart';

/// A Kubernetes add-on profile for a managed cluster.
class ManagedClusterAddonProfileResponse {
  /// Key-value pairs for configuring an add-on.
  final Map<String, String>? config;
  /// Whether the add-on is enabled or not.
  final bool enabled;
  /// Information of user assigned identity used by this add-on.
  final ManagedClusterAddonProfileResponseIdentity identity;

  /// Creates a new [ManagedClusterAddonProfileResponse].
  /// [config] Key-value pairs for configuring an add-on.
  /// [enabled] Whether the add-on is enabled or not.
  /// [identity] Information of user assigned identity used by this add-on.
  ManagedClusterAddonProfileResponse({
    this.config,
    required this.enabled,
    required this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'enabled': enabled,
      'identity': identity.toMap(),
    };
  }

  factory ManagedClusterAddonProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAddonProfileResponse(
      config: map['config'] == null ? null : (map['config'] as Map).cast<String, String>(),
      enabled: map['enabled'] as bool,
      identity: ManagedClusterAddonProfileResponseIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
    );
  }
}

