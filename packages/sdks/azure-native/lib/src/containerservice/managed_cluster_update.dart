// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_upgrade_spec.dart';
import 'node_image_selection.dart';

/// The update to be applied to the ManagedClusters.
class ManagedClusterUpdate {
  /// The node image upgrade to be applied to the target nodes in update run.
  final pulumi.Input<NodeImageSelection?>? nodeImageSelection;
  /// The upgrade to apply to the ManagedClusters.
  final pulumi.Input<ManagedClusterUpgradeSpec> upgrade;

  /// Creates a new [ManagedClusterUpdate].
  /// [nodeImageSelection] The node image upgrade to be applied to the target nodes in update run.
  /// [upgrade] The upgrade to apply to the ManagedClusters.
  const ManagedClusterUpdate({
    this.nodeImageSelection,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeImageSelection': ?pulumi.Input.mapOptionalInputValue<NodeImageSelection, Map<String, dynamic>>(nodeImageSelection, (value) => value.toMap()),
      'upgrade': pulumi.Input.mapInputValue<ManagedClusterUpgradeSpec, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
    };
  }

  factory ManagedClusterUpdate.fromMap(Map<String, dynamic> map) {
    return ManagedClusterUpdate(
      nodeImageSelection: (() { final guardedValue = map['nodeImageSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeImageSelection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upgrade: pulumi.Input.fromValue(ManagedClusterUpgradeSpec.fromMap((map['upgrade']! as Map).cast<String, dynamic>())),
    );
  }
}
