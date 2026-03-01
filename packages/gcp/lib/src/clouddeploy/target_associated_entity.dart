// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_associated_entity_anthos_cluster.dart';
import 'target_associated_entity_gke_cluster.dart';

class TargetAssociatedEntity {
  /// Optional. Information specifying Anthos clusters as associated entities.
  final List<TargetAssociatedEntityAnthosCluster>? anthosClusters;

  /// The name for the key in the map for which this object is mapped to in the API
  final String entityId;

  /// Optional. Information specifying GKE clusters as associated entities.
  final List<TargetAssociatedEntityGkeCluster>? gkeClusters;

  /// Creates a new [TargetAssociatedEntity].
  /// [anthosClusters] Optional. Information specifying Anthos clusters as associated entities.
  /// [entityId] The name for the key in the map for which this object is mapped to in the API
  /// [gkeClusters] Optional. Information specifying GKE clusters as associated entities.
  TargetAssociatedEntity({
    this.anthosClusters,
    required this.entityId,
    this.gkeClusters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthosClusters': ?anthosClusters == null
          ? null
          : pulumi.Input.encodeList<
              TargetAssociatedEntityAnthosCluster,
              Map<String, dynamic>
            >(anthosClusters!, (value) => value.toMap()),
      'entityId': entityId,
      'gkeClusters': ?gkeClusters == null
          ? null
          : pulumi.Input.encodeList<
              TargetAssociatedEntityGkeCluster,
              Map<String, dynamic>
            >(gkeClusters!, (value) => value.toMap()),
    };
  }

  factory TargetAssociatedEntity.fromMap(Map<String, dynamic> map) {
    return TargetAssociatedEntity(
      anthosClusters: map['anthosClusters'] == null
          ? null
          : pulumi.Input.decodeList<TargetAssociatedEntityAnthosCluster>(
              map['anthosClusters'],
              (value) => TargetAssociatedEntityAnthosCluster.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      entityId: map['entityId'] as String,
      gkeClusters: map['gkeClusters'] == null
          ? null
          : pulumi.Input.decodeList<TargetAssociatedEntityGkeCluster>(
              map['gkeClusters'],
              (value) => TargetAssociatedEntityGkeCluster.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
