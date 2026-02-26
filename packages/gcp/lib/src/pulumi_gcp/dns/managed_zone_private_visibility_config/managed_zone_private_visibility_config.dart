// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../managed_zone_private_visibility_config_gke_cluster/managed_zone_private_visibility_config_gke_cluster.dart';
import '../managed_zone_private_visibility_config_network/managed_zone_private_visibility_config_network.dart';

class ManagedZonePrivateVisibilityConfig {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  /// Structure is documented below.
  final List<ManagedZonePrivateVisibilityConfigGkeCluster>? gkeClusters;
  final List<ManagedZonePrivateVisibilityConfigNetwork>? networks;

  ManagedZonePrivateVisibilityConfig({
    this.gkeClusters,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gkeClustersValue = gkeClusters;
    if (gkeClustersValue != null) {
      map['gkeClusters'] = Input.encodeList<
          ManagedZonePrivateVisibilityConfigGkeCluster,
          Map<String, dynamic>>(gkeClustersValue, (value) => value.toMap());
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = Input.encodeList<
          ManagedZonePrivateVisibilityConfigNetwork,
          Map<String, dynamic>>(networksValue, (value) => value.toMap());
    }
    return map;
  }

  factory ManagedZonePrivateVisibilityConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfig(
      gkeClusters: map['gkeClusters'] == null
          ? null
          : Input.decodeList<ManagedZonePrivateVisibilityConfigGkeCluster>(
              map['gkeClusters'],
              (value) => ManagedZonePrivateVisibilityConfigGkeCluster.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networks: map['networks'] == null
          ? null
          : Input.decodeList<ManagedZonePrivateVisibilityConfigNetwork>(
              map['networks'],
              (value) => ManagedZonePrivateVisibilityConfigNetwork.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
