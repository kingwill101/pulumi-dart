// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeDrainConfig {
  /// Whether to respect PodDisruptionBudget policy during node pool deletion.
  final bool respectPdbDuringNodePoolDeletion;

  GetClusterNodePoolNodeDrainConfig({
    required this.respectPdbDuringNodePoolDeletion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['respectPdbDuringNodePoolDeletion'] = respectPdbDuringNodePoolDeletion;
    return map;
  }

  factory GetClusterNodePoolNodeDrainConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeDrainConfig(
      respectPdbDuringNodePoolDeletion:
          map['respectPdbDuringNodePoolDeletion'] as bool,
    );
  }
}
