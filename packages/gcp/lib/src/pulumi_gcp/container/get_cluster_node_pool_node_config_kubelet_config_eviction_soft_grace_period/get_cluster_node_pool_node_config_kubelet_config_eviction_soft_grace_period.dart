// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod {
  /// Defines grace period for the imagefs.available soft eviction threshold
  final String imagefsAvailable;

  /// Defines grace period for the imagefs.inodesFree soft eviction threshold.
  final String imagefsInodesFree;

  /// Defines grace period for the memory.available soft eviction threshold.
  final String memoryAvailable;

  /// Defines grace period for the nodefs.available soft eviction threshold.
  final String nodefsAvailable;

  /// Defines grace period for the nodefs.inodesFree soft eviction threshold.
  final String nodefsInodesFree;

  /// Defines grace period for the pid.available soft eviction threshold.
  final String pidAvailable;

  GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod({
    required this.imagefsAvailable,
    required this.imagefsInodesFree,
    required this.memoryAvailable,
    required this.nodefsAvailable,
    required this.nodefsInodesFree,
    required this.pidAvailable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imagefsAvailable'] = imagefsAvailable;
    map['imagefsInodesFree'] = imagefsInodesFree;
    map['memoryAvailable'] = memoryAvailable;
    map['nodefsAvailable'] = nodefsAvailable;
    map['nodefsInodesFree'] = nodefsInodesFree;
    map['pidAvailable'] = pidAvailable;
    return map;
  }

  factory GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod(
      imagefsAvailable: map['imagefsAvailable'] as String,
      imagefsInodesFree: map['imagefsInodesFree'] as String,
      memoryAvailable: map['memoryAvailable'] as String,
      nodefsAvailable: map['nodefsAvailable'] as String,
      nodefsInodesFree: map['nodefsInodesFree'] as String,
      pidAvailable: map['pidAvailable'] as String,
    );
  }
}
