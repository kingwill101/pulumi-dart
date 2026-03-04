// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_addon_profile_response_identity.dart';

/// A Kubernetes add-on profile for a managed cluster.
class ManagedClusterAddonProfileResponse {
  /// Key-value pairs for configuring an add-on.
  final pulumi.Input<Map<String, String>>? config;

  /// Whether the add-on is enabled or not.
  final pulumi.Input<bool> enabled;

  /// Information of user assigned identity used by this add-on.
  final pulumi.Input<ManagedClusterAddonProfileResponseIdentity> identity;

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
      'identity':
          pulumi.Input.mapInputValue<
            ManagedClusterAddonProfileResponseIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
    };
  }

  factory ManagedClusterAddonProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAddonProfileResponse(
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      identity: pulumi.Input.fromValue(
        ManagedClusterAddonProfileResponseIdentity.fromMap(
          (map['identity']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
