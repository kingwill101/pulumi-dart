// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_associated_entity_anthos_cluster/target_associated_entity_anthos_cluster.dart';
import '../target_associated_entity_gke_cluster/target_associated_entity_gke_cluster.dart';

class TargetAssociatedEntity {
  /// Optional. Information specifying Anthos clusters as associated entities.
  final List<TargetAssociatedEntityAnthosCluster>? anthosClusters;

  /// The name for the key in the map for which this object is mapped to in the API
  final String entityId;

  /// Optional. Information specifying GKE clusters as associated entities.
  final List<TargetAssociatedEntityGkeCluster>? gkeClusters;

  TargetAssociatedEntity({
    this.anthosClusters,
    required this.entityId,
    this.gkeClusters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final anthosClustersValue = anthosClusters;
    if (anthosClustersValue != null) {
      map['anthosClusters'] = pulumi.Input.encodeList<
          TargetAssociatedEntityAnthosCluster,
          Map<String, dynamic>>(anthosClustersValue, (value) => value.toMap());
    }
    map['entityId'] = entityId;
    final gkeClustersValue = gkeClusters;
    if (gkeClustersValue != null) {
      map['gkeClusters'] = pulumi.Input.encodeList<
          TargetAssociatedEntityGkeCluster,
          Map<String, dynamic>>(gkeClustersValue, (value) => value.toMap());
    }
    return map;
  }

  factory TargetAssociatedEntity.fromMap(Map<String, dynamic> map) {
    return TargetAssociatedEntity(
      anthosClusters: map['anthosClusters'] == null
          ? null
          : pulumi.Input.decodeList<TargetAssociatedEntityAnthosCluster>(
              map['anthosClusters'],
              (value) => TargetAssociatedEntityAnthosCluster.fromMap(
                  (value as Map).cast<String, dynamic>())),
      entityId: map['entityId'] as String,
      gkeClusters: map['gkeClusters'] == null
          ? null
          : pulumi.Input.decodeList<TargetAssociatedEntityGkeCluster>(
              map['gkeClusters'],
              (value) => TargetAssociatedEntityGkeCluster.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
