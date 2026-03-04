// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_upgrade_spec_response.dart';
import 'node_image_selection_response.dart';

/// The update to be applied to the ManagedClusters.
class ManagedClusterUpdateResponse {
  /// The node image upgrade to be applied to the target nodes in update run.
  final pulumi.Input<NodeImageSelectionResponse>? nodeImageSelection;

  /// The upgrade to apply to the ManagedClusters.
  final pulumi.Input<ManagedClusterUpgradeSpecResponse> upgrade;

  /// Creates a new [ManagedClusterUpdateResponse].
  /// [nodeImageSelection] The node image upgrade to be applied to the target nodes in update run.
  /// [upgrade] The upgrade to apply to the ManagedClusters.
  ManagedClusterUpdateResponse({
    this.nodeImageSelection,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeImageSelection':
          ?pulumi.Input.mapOptionalInputValue<
            NodeImageSelectionResponse,
            Map<String, dynamic>
          >(nodeImageSelection, (value) => value.toMap()),
      'upgrade':
          pulumi.Input.mapInputValue<
            ManagedClusterUpgradeSpecResponse,
            Map<String, dynamic>
          >(upgrade, (value) => value.toMap()),
    };
  }

  factory ManagedClusterUpdateResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterUpdateResponse(
      nodeImageSelection: (() {
        final guardedValue = map['nodeImageSelection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeImageSelectionResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      upgrade: pulumi.Input.fromValue(
        ManagedClusterUpgradeSpecResponse.fromMap(
          (map['upgrade']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
