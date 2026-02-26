// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeDrainConfig {
  /// Whether to respect PodDisruptionBudget policy during node pool deletion.
  final bool? respectPdbDuringNodePoolDeletion;

  ClusterNodePoolNodeDrainConfig({
    this.respectPdbDuringNodePoolDeletion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final respectPdbDuringNodePoolDeletionValue =
        respectPdbDuringNodePoolDeletion;
    if (respectPdbDuringNodePoolDeletionValue != null) {
      map['respectPdbDuringNodePoolDeletion'] =
          respectPdbDuringNodePoolDeletionValue;
    }
    return map;
  }

  factory ClusterNodePoolNodeDrainConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeDrainConfig(
      respectPdbDuringNodePoolDeletion:
          map['respectPdbDuringNodePoolDeletion'] == null
              ? null
              : map['respectPdbDuringNodePoolDeletion'] as bool,
    );
  }
}
