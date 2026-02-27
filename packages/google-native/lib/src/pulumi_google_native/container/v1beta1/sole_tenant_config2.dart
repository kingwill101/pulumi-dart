// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'node_affinity2.dart';

/// SoleTenantConfig contains the NodeAffinities to specify what shared sole tenant node groups should back the node pool.
class SoleTenantConfig2 {
  /// NodeAffinities used to match to a shared sole tenant node group.
  final List<NodeAffinity2>? nodeAffinities;

  SoleTenantConfig2({
    this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodeAffinitiesValue = nodeAffinities;
    if (nodeAffinitiesValue != null) {
      map['nodeAffinities'] =
          Input.encodeList<NodeAffinity2, Map<String, dynamic>>(
              nodeAffinitiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory SoleTenantConfig2.fromMap(Map<String, dynamic> map) {
    return SoleTenantConfig2(
      nodeAffinities: map['nodeAffinities'] == null
          ? null
          : Input.decodeList<NodeAffinity2>(
              map['nodeAffinities'],
              (value) => NodeAffinity2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
