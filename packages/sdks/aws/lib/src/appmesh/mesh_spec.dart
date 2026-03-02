// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mesh_spec_egress_filter.dart';
import 'mesh_spec_service_discovery.dart';

class MeshSpec {
  /// Egress filter rules for the service mesh.
  final pulumi.Input<MeshSpecEgressFilter>? egressFilter;
  /// The service discovery information for the service mesh.
  final pulumi.Input<MeshSpecServiceDiscovery>? serviceDiscovery;

  /// Creates a new [MeshSpec].
  /// [egressFilter] Egress filter rules for the service mesh.
  /// [serviceDiscovery] The service discovery information for the service mesh.
  MeshSpec({
    this.egressFilter,
    this.serviceDiscovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressFilter': ?pulumi.Input.mapOptionalInputValue<MeshSpecEgressFilter, Map<String, dynamic>>(egressFilter, (value) => value.toMap()),
      'serviceDiscovery': ?pulumi.Input.mapOptionalInputValue<MeshSpecServiceDiscovery, Map<String, dynamic>>(serviceDiscovery, (value) => value.toMap()),
    };
  }

  factory MeshSpec.fromMap(Map<String, dynamic> map) {
    return MeshSpec(
      egressFilter: map['egressFilter'] == null ? null : ((MeshSpecEgressFilter.fromMap((map['egressFilter']! as Map).cast<String, dynamic>())).input()).input(),
      serviceDiscovery: map['serviceDiscovery'] == null ? null : ((MeshSpecServiceDiscovery.fromMap((map['serviceDiscovery']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

