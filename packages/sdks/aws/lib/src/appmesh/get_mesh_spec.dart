// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mesh_spec_egress_filter.dart';
import 'get_mesh_spec_service_discovery.dart';

class GetMeshSpec {
  final pulumi.Input<List<GetMeshSpecEgressFilter>> egressFilters;
  final pulumi.Input<List<GetMeshSpecServiceDiscovery>> serviceDiscoveries;

  /// Creates a new [GetMeshSpec].
  /// [egressFilters] Required.
  /// [serviceDiscoveries] Required.
  GetMeshSpec({required this.egressFilters, required this.serviceDiscoveries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressFilters':
          pulumi.Input.mapInputValue<
            List<GetMeshSpecEgressFilter>,
            List<Map<String, dynamic>>
          >(
            egressFilters,
            (value) =>
                pulumi.Input.encodeList<
                  GetMeshSpecEgressFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceDiscoveries':
          pulumi.Input.mapInputValue<
            List<GetMeshSpecServiceDiscovery>,
            List<Map<String, dynamic>>
          >(
            serviceDiscoveries,
            (value) =>
                pulumi.Input.encodeList<
                  GetMeshSpecServiceDiscovery,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetMeshSpec.fromMap(Map<String, dynamic> map) {
    return GetMeshSpec(
      egressFilters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetMeshSpecEgressFilter>(
          map['egressFilters']!,
          (value) => GetMeshSpecEgressFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      serviceDiscoveries: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetMeshSpecServiceDiscovery>(
          map['serviceDiscoveries']!,
          (value) => GetMeshSpecServiceDiscovery.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
