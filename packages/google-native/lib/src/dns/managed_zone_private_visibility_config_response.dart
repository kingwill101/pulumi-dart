// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_private_visibility_config_gkecluster_response.dart';
import 'managed_zone_private_visibility_config_network_response.dart';

class ManagedZonePrivateVisibilityConfigResponse {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigGKEClusterResponse> gkeClusters;
  final String kind;
  /// The list of VPC networks that can see this zone.
  final List<ManagedZonePrivateVisibilityConfigNetworkResponse> networks;

  /// Creates a new [ManagedZonePrivateVisibilityConfigResponse].
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [kind] Required.
  /// [networks] The list of VPC networks that can see this zone.
  ManagedZonePrivateVisibilityConfigResponse({
    required this.gkeClusters,
    required this.kind,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusters': pulumi.Input.encodeList<ManagedZonePrivateVisibilityConfigGKEClusterResponse, Map<String, dynamic>>(gkeClusters, (value) => value.toMap()),
      'kind': kind,
      'networks': pulumi.Input.encodeList<ManagedZonePrivateVisibilityConfigNetworkResponse, Map<String, dynamic>>(networks, (value) => value.toMap()),
    };
  }

  factory ManagedZonePrivateVisibilityConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigResponse(
      gkeClusters: pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigGKEClusterResponse>(map['gkeClusters'], (value) => ManagedZonePrivateVisibilityConfigGKEClusterResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      networks: pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigNetworkResponse>(map['networks'], (value) => ManagedZonePrivateVisibilityConfigNetworkResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

