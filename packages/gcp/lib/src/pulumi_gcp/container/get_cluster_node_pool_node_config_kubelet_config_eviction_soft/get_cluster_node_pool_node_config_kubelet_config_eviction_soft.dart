// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft {
  /// Defines percentage of soft eviction threshold for imagefs.available.
  final String imagefsAvailable;

  /// Defines percentage of soft eviction threshold for imagefs.inodesFree.
  final String imagefsInodesFree;

  /// Defines quantity of soft eviction threshold for memory.available.
  final String memoryAvailable;

  /// Defines percentage of soft eviction threshold for nodefs.available.
  final String nodefsAvailable;

  /// Defines percentage of soft eviction threshold for nodefs.inodesFree.
  final String nodefsInodesFree;

  /// Defines percentage of soft eviction threshold for pid.available.
  final String pidAvailable;

  GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft({
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

  factory GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft(
      imagefsAvailable: map['imagefsAvailable'] as String,
      imagefsInodesFree: map['imagefsInodesFree'] as String,
      memoryAvailable: map['memoryAvailable'] as String,
      nodefsAvailable: map['nodefsAvailable'] as String,
      nodefsInodesFree: map['nodefsInodesFree'] as String,
      pidAvailable: map['pidAvailable'] as String,
    );
  }
}
