// ignore_for_file: unused_element, unnecessary_cast

import 'mesh_spec_egress_filter.dart';
import 'mesh_spec_service_discovery.dart';

class MeshSpec {
  /// Egress filter rules for the service mesh.
  final MeshSpecEgressFilter? egressFilter;

  /// The service discovery information for the service mesh.
  final MeshSpecServiceDiscovery? serviceDiscovery;

  /// Creates a new [MeshSpec].
  /// [egressFilter] Egress filter rules for the service mesh.
  /// [serviceDiscovery] The service discovery information for the service mesh.
  MeshSpec({
    this.egressFilter,
    this.serviceDiscovery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final egressFilterValue = egressFilter;
    if (egressFilterValue != null) {
      map['egressFilter'] = egressFilterValue.toMap();
    }
    final serviceDiscoveryValue = serviceDiscovery;
    if (serviceDiscoveryValue != null) {
      map['serviceDiscovery'] = serviceDiscoveryValue.toMap();
    }
    return map;
  }

  factory MeshSpec.fromMap(Map<String, dynamic> map) {
    return MeshSpec(
      egressFilter: map['egressFilter'] == null
          ? null
          : MeshSpecEgressFilter.fromMap(
              (map['egressFilter'] as Map).cast<String, dynamic>()),
      serviceDiscovery: map['serviceDiscovery'] == null
          ? null
          : MeshSpecServiceDiscovery.fromMap(
              (map['serviceDiscovery'] as Map).cast<String, dynamic>()),
    );
  }
}
