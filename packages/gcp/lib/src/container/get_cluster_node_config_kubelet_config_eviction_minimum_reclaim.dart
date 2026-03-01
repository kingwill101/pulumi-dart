// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim {
  /// Defines percentage of minimum reclaim for imagefs.available.
  final String imagefsAvailable;

  /// Defines percentage of minimum reclaim for imagefs.inodesFree.
  final String imagefsInodesFree;

  /// Defines percentage of minimum reclaim for memory.available.
  final String memoryAvailable;

  /// Defines percentage of minimum reclaim for nodefs.available.
  final String nodefsAvailable;

  /// Defines percentage of minimum reclaim for nodefs.inodesFree.
  final String nodefsInodesFree;

  /// Defines percentage of minimum reclaim for pid.available.
  final String pidAvailable;

  /// Creates a new [GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim].
  /// [imagefsAvailable] Defines percentage of minimum reclaim for imagefs.available.
  /// [imagefsInodesFree] Defines percentage of minimum reclaim for imagefs.inodesFree.
  /// [memoryAvailable] Defines percentage of minimum reclaim for memory.available.
  /// [nodefsAvailable] Defines percentage of minimum reclaim for nodefs.available.
  /// [nodefsInodesFree] Defines percentage of minimum reclaim for nodefs.inodesFree.
  /// [pidAvailable] Defines percentage of minimum reclaim for pid.available.
  GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim({
    required this.imagefsAvailable,
    required this.imagefsInodesFree,
    required this.memoryAvailable,
    required this.nodefsAvailable,
    required this.nodefsInodesFree,
    required this.pidAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagefsAvailable': imagefsAvailable,
      'imagefsInodesFree': imagefsInodesFree,
      'memoryAvailable': memoryAvailable,
      'nodefsAvailable': nodefsAvailable,
      'nodefsInodesFree': nodefsInodesFree,
      'pidAvailable': pidAvailable,
    };
  }

  factory GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim(
      imagefsAvailable: map['imagefsAvailable'] as String,
      imagefsInodesFree: map['imagefsInodesFree'] as String,
      memoryAvailable: map['memoryAvailable'] as String,
      nodefsAvailable: map['nodefsAvailable'] as String,
      nodefsInodesFree: map['nodefsInodesFree'] as String,
      pidAvailable: map['pidAvailable'] as String,
    );
  }
}
