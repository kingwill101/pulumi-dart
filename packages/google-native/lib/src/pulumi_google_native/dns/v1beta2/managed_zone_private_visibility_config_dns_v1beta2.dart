// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_private_visibility_config_gkecluster_dns_v1beta2.dart';
import 'managed_zone_private_visibility_config_network_dns_v1beta2.dart';

class ManagedZonePrivateVisibilityConfigDnsV1beta2 {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2>?
      gkeClusters;
  final String? kind;

  /// The list of VPC networks that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2>? networks;

  ManagedZonePrivateVisibilityConfigDnsV1beta2({
    this.gkeClusters,
    this.kind,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gkeClustersValue = gkeClusters;
    if (gkeClustersValue != null) {
      map['gkeClusters'] = pulumi.Input.encodeList<
          ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2,
          Map<String, dynamic>>(gkeClustersValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = pulumi.Input.encodeList<
          ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2,
          Map<String, dynamic>>(networksValue, (value) => value.toMap());
    }
    return map;
  }

  factory ManagedZonePrivateVisibilityConfigDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigDnsV1beta2(
      gkeClusters: map['gkeClusters'] == null
          ? null
          : pulumi.Input.decodeList<
                  ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2>(
              map['gkeClusters'],
              (value) => ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2
                  .fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      networks: map['networks'] == null
          ? null
          : pulumi.Input.decodeList<
                  ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2>(
              map['networks'],
              (value) =>
                  ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
