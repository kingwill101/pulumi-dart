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

  /// Creates a new [ManagedZonePrivateVisibilityConfigDnsV1beta2].
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [kind] Optional.
  /// [networks] The list of VPC networks that can see this zone.
  ManagedZonePrivateVisibilityConfigDnsV1beta2({
    this.gkeClusters,
    this.kind,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusters': ?gkeClusters == null
          ? null
          : pulumi.Input.encodeList<
              ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2,
              Map<String, dynamic>
            >(gkeClusters!, (value) => value.toMap()),
      'kind': ?kind,
      'networks': ?networks == null
          ? null
          : pulumi.Input.encodeList<
              ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2,
              Map<String, dynamic>
            >(networks!, (value) => value.toMap()),
    };
  }

  factory ManagedZonePrivateVisibilityConfigDnsV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZonePrivateVisibilityConfigDnsV1beta2(
      gkeClusters: map['gkeClusters'] == null
          ? null
          : pulumi.Input.decodeList<
              ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2
            >(
              map['gkeClusters'],
              (value) =>
                  ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      kind: map['kind'] == null ? null : map['kind'] as String,
      networks: map['networks'] == null
          ? null
          : pulumi.Input.decodeList<
              ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2
            >(
              map['networks'],
              (value) =>
                  ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
