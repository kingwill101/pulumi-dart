// ignore_for_file: unused_element, unnecessary_cast


/// PodSchedulingContextSpec describes where resources for the Pod are needed.
class PodSchedulingContextSpecPatch {
  /// PotentialNodes lists nodes where the Pod might be able to run.
  ///
  /// The size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced.
  final List<String>? potentialNodes;
  /// SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use "WaitForFirstConsumer" allocation is to be attempted.
  final String? selectedNode;

  /// Creates a new [PodSchedulingContextSpecPatch].
  /// [potentialNodes] PotentialNodes lists nodes where the Pod might be able to run.
  /// [selectedNode] SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use "WaitForFirstConsumer" allocation is to be attempted.
  PodSchedulingContextSpecPatch({
    this.potentialNodes,
    this.selectedNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'potentialNodes': ?potentialNodes,
      'selectedNode': ?selectedNode,
    };
  }

  factory PodSchedulingContextSpecPatch.fromMap(Map<String, dynamic> map) {
    return PodSchedulingContextSpecPatch(
      potentialNodes: map['potentialNodes'] == null ? null : (map['potentialNodes'] as List).cast<String>(),
      selectedNode: map['selectedNode'] == null ? null : map['selectedNode'] as String,
    );
  }
}

