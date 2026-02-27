// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'node_affinity_response.dart';

/// SoleTenantConfig contains the NodeAffinities to specify what shared sole tenant node groups should back the node pool.
class SoleTenantConfigResponse {
  /// NodeAffinities used to match to a shared sole tenant node group.
  final List<NodeAffinityResponse> nodeAffinities;

  SoleTenantConfigResponse({
    required this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeAffinities'] =
        Input.encodeList<NodeAffinityResponse, Map<String, dynamic>>(
            nodeAffinities, (value) => value.toMap());
    return map;
  }

  factory SoleTenantConfigResponse.fromMap(Map<String, dynamic> map) {
    return SoleTenantConfigResponse(
      nodeAffinities: Input.decodeList<NodeAffinityResponse>(
          map['nodeAffinities'],
          (value) => NodeAffinityResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
