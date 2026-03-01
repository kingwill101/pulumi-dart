// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_upgrade_spec_response.dart';
import 'node_image_selection_response.dart';

/// The update to be applied to the ManagedClusters.
class ManagedClusterUpdateResponse {
  /// The node image upgrade to be applied to the target nodes in update run.
  final NodeImageSelectionResponse? nodeImageSelection;
  /// The upgrade to apply to the ManagedClusters.
  final ManagedClusterUpgradeSpecResponse upgrade;

  /// Creates a new [ManagedClusterUpdateResponse].
  /// [nodeImageSelection] The node image upgrade to be applied to the target nodes in update run.
  /// [upgrade] The upgrade to apply to the ManagedClusters.
  ManagedClusterUpdateResponse({
    this.nodeImageSelection,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeImageSelection': ?nodeImageSelection == null ? null : nodeImageSelection!.toMap(),
      'upgrade': upgrade.toMap(),
    };
  }

  factory ManagedClusterUpdateResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterUpdateResponse(
      nodeImageSelection: map['nodeImageSelection'] == null ? null : NodeImageSelectionResponse.fromMap((map['nodeImageSelection'] as Map).cast<String, dynamic>()),
      upgrade: ManagedClusterUpgradeSpecResponse.fromMap((map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}

