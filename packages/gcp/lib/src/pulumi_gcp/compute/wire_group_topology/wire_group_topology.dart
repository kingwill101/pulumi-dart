// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../wire_group_topology_endpoint/wire_group_topology_endpoint.dart';

class WireGroupTopology {
  /// Endpoints grouped by location, each mapping to interconnect configurations.
  /// Structure is documented below.
  final List<WireGroupTopologyEndpoint>? endpoints;

  WireGroupTopology({
    this.endpoints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointsValue = endpoints;
    if (endpointsValue != null) {
      map['endpoints'] =
          Input.encodeList<WireGroupTopologyEndpoint, Map<String, dynamic>>(
              endpointsValue, (value) => value.toMap());
    }
    return map;
  }

  factory WireGroupTopology.fromMap(Map<String, dynamic> map) {
    return WireGroupTopology(
      endpoints: map['endpoints'] == null
          ? null
          : Input.decodeList<WireGroupTopologyEndpoint>(
              map['endpoints'],
              (value) => WireGroupTopologyEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
