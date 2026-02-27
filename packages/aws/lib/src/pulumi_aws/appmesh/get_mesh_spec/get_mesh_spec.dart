// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_mesh_spec_egress_filter/get_mesh_spec_egress_filter.dart';
import '../get_mesh_spec_service_discovery/get_mesh_spec_service_discovery.dart';

class GetMeshSpec {
  final List<GetMeshSpecEgressFilter> egressFilters;
  final List<GetMeshSpecServiceDiscovery> serviceDiscoveries;

  GetMeshSpec({
    required this.egressFilters,
    required this.serviceDiscoveries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['egressFilters'] =
        pulumi.Input.encodeList<GetMeshSpecEgressFilter, Map<String, dynamic>>(
            egressFilters, (value) => value.toMap());
    map['serviceDiscoveries'] = pulumi.Input.encodeList<
        GetMeshSpecServiceDiscovery,
        Map<String, dynamic>>(serviceDiscoveries, (value) => value.toMap());
    return map;
  }

  factory GetMeshSpec.fromMap(Map<String, dynamic> map) {
    return GetMeshSpec(
      egressFilters: pulumi.Input.decodeList<GetMeshSpecEgressFilter>(
          map['egressFilters'],
          (value) => GetMeshSpecEgressFilter.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceDiscoveries: pulumi.Input.decodeList<GetMeshSpecServiceDiscovery>(
          map['serviceDiscoveries'],
          (value) => GetMeshSpecServiceDiscovery.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
