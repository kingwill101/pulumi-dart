// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'managed_zone_private_visibility_config_gkecluster.dart';
import 'managed_zone_private_visibility_config_network.dart';

class ManagedZonePrivateVisibilityConfig {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigGKECluster>? gkeClusters;
  final String? kind;

  /// The list of VPC networks that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigNetwork>? networks;

  ManagedZonePrivateVisibilityConfig({
    this.gkeClusters,
    this.kind,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gkeClustersValue = gkeClusters;
    if (gkeClustersValue != null) {
      map['gkeClusters'] = Input.encodeList<
          ManagedZonePrivateVisibilityConfigGKECluster,
          Map<String, dynamic>>(gkeClustersValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
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
          : Input.decodeList<ManagedZonePrivateVisibilityConfigGKECluster>(
              map['gkeClusters'],
              (value) => ManagedZonePrivateVisibilityConfigGKECluster.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      networks: map['networks'] == null
          ? null
          : Input.decodeList<ManagedZonePrivateVisibilityConfigNetwork>(
              map['networks'],
              (value) => ManagedZonePrivateVisibilityConfigNetwork.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
