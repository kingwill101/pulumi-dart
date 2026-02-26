// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'managed_zone_private_visibility_config_gkecluster_response2.dart';
import 'managed_zone_private_visibility_config_network_response2.dart';

class ManagedZonePrivateVisibilityConfigResponse2 {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigGKEClusterResponse2> gkeClusters;
  final String kind;

  /// The list of VPC networks that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigNetworkResponse2> networks;

  ManagedZonePrivateVisibilityConfigResponse2({
    required this.gkeClusters,
    required this.kind,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeClusters'] = Input.encodeList<
        ManagedZonePrivateVisibilityConfigGKEClusterResponse2,
        Map<String, dynamic>>(gkeClusters, (value) => value.toMap());
    map['kind'] = kind;
    map['networks'] = Input.encodeList<
        ManagedZonePrivateVisibilityConfigNetworkResponse2,
        Map<String, dynamic>>(networks, (value) => value.toMap());
    return map;
  }

  factory ManagedZonePrivateVisibilityConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigResponse2(
      gkeClusters: Input.decodeList<
              ManagedZonePrivateVisibilityConfigGKEClusterResponse2>(
          map['gkeClusters'],
          (value) =>
              ManagedZonePrivateVisibilityConfigGKEClusterResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      networks:
          Input.decodeList<ManagedZonePrivateVisibilityConfigNetworkResponse2>(
              map['networks'],
              (value) =>
                  ManagedZonePrivateVisibilityConfigNetworkResponse2.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
