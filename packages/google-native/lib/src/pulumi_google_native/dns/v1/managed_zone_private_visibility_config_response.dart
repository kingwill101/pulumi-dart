// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'managed_zone_private_visibility_config_gkecluster_response.dart';
import 'managed_zone_private_visibility_config_network_response.dart';

class ManagedZonePrivateVisibilityConfigResponse {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigGKEClusterResponse> gkeClusters;
  final String kind;

  /// The list of VPC networks that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigNetworkResponse> networks;

  ManagedZonePrivateVisibilityConfigResponse({
    required this.gkeClusters,
    required this.kind,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeClusters'] = Input.encodeList<
        ManagedZonePrivateVisibilityConfigGKEClusterResponse,
        Map<String, dynamic>>(gkeClusters, (value) => value.toMap());
    map['kind'] = kind;
    map['networks'] = Input.encodeList<
        ManagedZonePrivateVisibilityConfigNetworkResponse,
        Map<String, dynamic>>(networks, (value) => value.toMap());
    return map;
  }

  factory ManagedZonePrivateVisibilityConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigResponse(
      gkeClusters: Input.decodeList<
              ManagedZonePrivateVisibilityConfigGKEClusterResponse>(
          map['gkeClusters'],
          (value) =>
              ManagedZonePrivateVisibilityConfigGKEClusterResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      networks:
          Input.decodeList<ManagedZonePrivateVisibilityConfigNetworkResponse>(
              map['networks'],
              (value) =>
                  ManagedZonePrivateVisibilityConfigNetworkResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
