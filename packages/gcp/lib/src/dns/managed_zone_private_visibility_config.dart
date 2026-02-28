// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_private_visibility_config_gke_cluster.dart';
import 'managed_zone_private_visibility_config_network.dart';

class ManagedZonePrivateVisibilityConfig {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  /// Structure is documented below.
  final List<ManagedZonePrivateVisibilityConfigGkeCluster>? gkeClusters;
  final List<ManagedZonePrivateVisibilityConfigNetwork>? networks;

  /// Creates a new [ManagedZonePrivateVisibilityConfig].
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [networks] Optional.
  ManagedZonePrivateVisibilityConfig({
    this.gkeClusters,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusters': ?gkeClusters == null ? null : pulumi.Input.encodeList<ManagedZonePrivateVisibilityConfigGkeCluster, Map<String, dynamic>>(gkeClusters!, (value) => value.toMap()),
      'networks': ?networks == null ? null : pulumi.Input.encodeList<ManagedZonePrivateVisibilityConfigNetwork, Map<String, dynamic>>(networks!, (value) => value.toMap()),
    };
  }

  factory ManagedZonePrivateVisibilityConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfig(
      gkeClusters: map['gkeClusters'] == null ? null : pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigGkeCluster>(map['gkeClusters'], (value) => ManagedZonePrivateVisibilityConfigGkeCluster.fromMap((value as Map).cast<String, dynamic>())),
      networks: map['networks'] == null ? null : pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigNetwork>(map['networks'], (value) => ManagedZonePrivateVisibilityConfigNetwork.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

