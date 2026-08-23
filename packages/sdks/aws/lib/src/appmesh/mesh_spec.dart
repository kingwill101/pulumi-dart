// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mesh_spec_egress_filter.dart';
import 'mesh_spec_service_discovery.dart';

class MeshSpec {
  /// Egress filter rules for the service mesh. See `egressFilter` Block for details.
  final pulumi.Input<MeshSpecEgressFilter>? egressFilter;
  /// Service discovery information for the service mesh. See `serviceDiscovery` Block for details.
  final pulumi.Input<MeshSpecServiceDiscovery>? serviceDiscovery;

  /// Creates a new [MeshSpec].
  /// [egressFilter] Egress filter rules for the service mesh. See `egressFilter` Block for details.
  /// [serviceDiscovery] Service discovery information for the service mesh. See `serviceDiscovery` Block for details.
  const MeshSpec({
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
      egressFilter: (() { final guardedValue = map['egressFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MeshSpecEgressFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceDiscovery: (() { final guardedValue = map['serviceDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MeshSpecServiceDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
