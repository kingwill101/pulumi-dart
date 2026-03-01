// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_affinity_response_container_v1beta1.dart';

/// SoleTenantConfig contains the NodeAffinities to specify what shared sole tenant node groups should back the node pool.
class SoleTenantConfigResponseContainerV1beta1 {
  /// NodeAffinities used to match to a shared sole tenant node group.
  final List<NodeAffinityResponseContainerV1beta1> nodeAffinities;

  /// Creates a new [SoleTenantConfigResponseContainerV1beta1].
  /// [nodeAffinities] NodeAffinities used to match to a shared sole tenant node group.
  SoleTenantConfigResponseContainerV1beta1({required this.nodeAffinities});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeAffinities':
          pulumi.Input.encodeList<
            NodeAffinityResponseContainerV1beta1,
            Map<String, dynamic>
          >(nodeAffinities, (value) => value.toMap()),
    };
  }

  factory SoleTenantConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SoleTenantConfigResponseContainerV1beta1(
      nodeAffinities:
          pulumi.Input.decodeList<NodeAffinityResponseContainerV1beta1>(
            map['nodeAffinities'],
            (value) => NodeAffinityResponseContainerV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
