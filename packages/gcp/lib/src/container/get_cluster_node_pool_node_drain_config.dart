// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeDrainConfig {
  /// Whether to respect PodDisruptionBudget policy during node pool deletion.
  final bool respectPdbDuringNodePoolDeletion;

  /// Creates a new [GetClusterNodePoolNodeDrainConfig].
  /// [respectPdbDuringNodePoolDeletion] Whether to respect PodDisruptionBudget policy during node pool deletion.
  GetClusterNodePoolNodeDrainConfig({
    required this.respectPdbDuringNodePoolDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'respectPdbDuringNodePoolDeletion': respectPdbDuringNodePoolDeletion,
    };
  }

  factory GetClusterNodePoolNodeDrainConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeDrainConfig(
      respectPdbDuringNodePoolDeletion:
          map['respectPdbDuringNodePoolDeletion'] as bool,
    );
  }
}
