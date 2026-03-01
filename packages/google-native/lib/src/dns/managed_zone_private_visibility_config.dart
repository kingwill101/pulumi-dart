// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_private_visibility_config_gkecluster.dart';
import 'managed_zone_private_visibility_config_network.dart';

class ManagedZonePrivateVisibilityConfig {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigGKECluster>? gkeClusters;
  final String? kind;

  /// The list of VPC networks that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigNetwork>? networks;

  /// Creates a new [ManagedZonePrivateVisibilityConfig].
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [kind] Optional.
  /// [networks] The list of VPC networks that can see this zone.
  ManagedZonePrivateVisibilityConfig({
    this.gkeClusters,
    this.kind,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusters': ?gkeClusters == null
          ? null
          : pulumi.Input.encodeList<
              ManagedZonePrivateVisibilityConfigGKECluster,
              Map<String, dynamic>
            >(gkeClusters!, (value) => value.toMap()),
      'kind': ?kind,
      'networks': ?networks == null
          ? null
          : pulumi.Input.encodeList<
              ManagedZonePrivateVisibilityConfigNetwork,
              Map<String, dynamic>
            >(networks!, (value) => value.toMap()),
    };
  }

  factory ManagedZonePrivateVisibilityConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfig(
      gkeClusters: map['gkeClusters'] == null
          ? null
          : pulumi
                .Input.decodeList<ManagedZonePrivateVisibilityConfigGKECluster>(
              map['gkeClusters'],
              (value) => ManagedZonePrivateVisibilityConfigGKECluster.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      kind: map['kind'] == null ? null : map['kind'] as String,
      networks: map['networks'] == null
          ? null
          : pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigNetwork>(
              map['networks'],
              (value) => ManagedZonePrivateVisibilityConfigNetwork.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
