// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'node_affinity_response2.dart';

/// SoleTenantConfig contains the NodeAffinities to specify what shared sole tenant node groups should back the node pool.
class SoleTenantConfigResponse2 {
  /// NodeAffinities used to match to a shared sole tenant node group.
  final List<NodeAffinityResponse2> nodeAffinities;

  SoleTenantConfigResponse2({
    required this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeAffinities'] =
        Input.encodeList<NodeAffinityResponse2, Map<String, dynamic>>(
            nodeAffinities, (value) => value.toMap());
    return map;
  }

  factory SoleTenantConfigResponse2.fromMap(Map<String, dynamic> map) {
    return SoleTenantConfigResponse2(
      nodeAffinities: Input.decodeList<NodeAffinityResponse2>(
          map['nodeAffinities'],
          (value) => NodeAffinityResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
