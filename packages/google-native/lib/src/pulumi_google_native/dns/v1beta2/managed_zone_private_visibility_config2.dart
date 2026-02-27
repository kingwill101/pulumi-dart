// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'managed_zone_private_visibility_config_gkecluster2.dart';
import 'managed_zone_private_visibility_config_network2.dart';

class ManagedZonePrivateVisibilityConfig2 {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigGKECluster2>? gkeClusters;
  final String? kind;

  /// The list of VPC networks that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigNetwork2>? networks;

  ManagedZonePrivateVisibilityConfig2({
    this.gkeClusters,
    this.kind,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gkeClustersValue = gkeClusters;
    if (gkeClustersValue != null) {
      map['gkeClusters'] = Input.encodeList<
          ManagedZonePrivateVisibilityConfigGKECluster2,
          Map<String, dynamic>>(gkeClustersValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = Input.encodeList<
          ManagedZonePrivateVisibilityConfigNetwork2,
          Map<String, dynamic>>(networksValue, (value) => value.toMap());
    }
    return map;
  }

  factory ManagedZonePrivateVisibilityConfig2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfig2(
      gkeClusters: map['gkeClusters'] == null
          ? null
          : Input.decodeList<ManagedZonePrivateVisibilityConfigGKECluster2>(
              map['gkeClusters'],
              (value) => ManagedZonePrivateVisibilityConfigGKECluster2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      networks: map['networks'] == null
          ? null
          : Input.decodeList<ManagedZonePrivateVisibilityConfigNetwork2>(
              map['networks'],
              (value) => ManagedZonePrivateVisibilityConfigNetwork2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
