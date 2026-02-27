// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'node_affinity.dart';

/// SoleTenantConfig contains the NodeAffinities to specify what shared sole tenant node groups should back the node pool.
class SoleTenantConfig {
  /// NodeAffinities used to match to a shared sole tenant node group.
  final List<NodeAffinity>? nodeAffinities;

  SoleTenantConfig({
    this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodeAffinitiesValue = nodeAffinities;
    if (nodeAffinitiesValue != null) {
      map['nodeAffinities'] =
          Input.encodeList<NodeAffinity, Map<String, dynamic>>(
              nodeAffinitiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory SoleTenantConfig.fromMap(Map<String, dynamic> map) {
    return SoleTenantConfig(
      nodeAffinities: map['nodeAffinities'] == null
          ? null
          : Input.decodeList<NodeAffinity>(
              map['nodeAffinities'],
              (value) =>
                  NodeAffinity.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
