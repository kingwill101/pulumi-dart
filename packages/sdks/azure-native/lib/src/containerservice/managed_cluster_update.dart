// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_upgrade_spec.dart';
import 'node_image_selection.dart';

/// The update to be applied to the ManagedClusters.
class ManagedClusterUpdate {
  /// The node image upgrade to be applied to the target nodes in update run.
  final NodeImageSelection? nodeImageSelection;
  /// The upgrade to apply to the ManagedClusters.
  final ManagedClusterUpgradeSpec upgrade;

  /// Creates a new [ManagedClusterUpdate].
  /// [nodeImageSelection] The node image upgrade to be applied to the target nodes in update run.
  /// [upgrade] The upgrade to apply to the ManagedClusters.
  ManagedClusterUpdate({
    this.nodeImageSelection,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeImageSelection': ?nodeImageSelection == null ? null : nodeImageSelection!.toMap(),
      'upgrade': upgrade.toMap(),
    };
  }

  factory ManagedClusterUpdate.fromMap(Map<String, dynamic> map) {
    return ManagedClusterUpdate(
      nodeImageSelection: map['nodeImageSelection'] == null ? null : NodeImageSelection.fromMap((map['nodeImageSelection'] as Map).cast<String, dynamic>()),
      upgrade: ManagedClusterUpgradeSpec.fromMap((map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}

