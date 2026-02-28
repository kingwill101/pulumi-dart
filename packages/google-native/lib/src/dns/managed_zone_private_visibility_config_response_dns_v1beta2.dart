// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_private_visibility_config_gkecluster_response_dns_v1beta2.dart';
import 'managed_zone_private_visibility_config_network_response_dns_v1beta2.dart';

class ManagedZonePrivateVisibilityConfigResponseDnsV1beta2 {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigGKEClusterResponseDnsV1beta2>
      gkeClusters;
  final String kind;

  /// The list of VPC networks that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2>
      networks;

  /// Creates a new [ManagedZonePrivateVisibilityConfigResponseDnsV1beta2].
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [kind] Required.
  /// [networks] The list of VPC networks that can see this zone.
  ManagedZonePrivateVisibilityConfigResponseDnsV1beta2({
    required this.gkeClusters,
    required this.kind,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeClusters'] = pulumi.Input.encodeList<
        ManagedZonePrivateVisibilityConfigGKEClusterResponseDnsV1beta2,
        Map<String, dynamic>>(gkeClusters, (value) => value.toMap());
    map['kind'] = kind;
    map['networks'] = pulumi.Input.encodeList<
        ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2,
        Map<String, dynamic>>(networks, (value) => value.toMap());
    return map;
  }

  factory ManagedZonePrivateVisibilityConfigResponseDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigResponseDnsV1beta2(
      gkeClusters: pulumi.Input.decodeList<
              ManagedZonePrivateVisibilityConfigGKEClusterResponseDnsV1beta2>(
          map['gkeClusters'],
          (value) =>
              ManagedZonePrivateVisibilityConfigGKEClusterResponseDnsV1beta2
                  .fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      networks: pulumi.Input.decodeList<
              ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2>(
          map['networks'],
          (value) => ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
