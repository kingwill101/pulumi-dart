// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim {
  /// Defines percentage of minimum reclaim for imagefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final String? imagefsAvailable;
  /// Defines percentage of minimum reclaim for imagefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final String? imagefsInodesFree;
  /// Defines percentage of minimum reclaim for memory.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final String? memoryAvailable;
  /// Defines percentage of minimum reclaim for nodefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final String? nodefsAvailable;
  /// Defines percentage of minimum reclaim for nodefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final String? nodefsInodesFree;
  /// Defines percentage of minimum reclaim for pid.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final String? pidAvailable;

  /// Creates a new [ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim].
  /// [imagefsAvailable] Defines percentage of minimum reclaim for imagefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [imagefsInodesFree] Defines percentage of minimum reclaim for imagefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [memoryAvailable] Defines percentage of minimum reclaim for memory.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [nodefsAvailable] Defines percentage of minimum reclaim for nodefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [nodefsInodesFree] Defines percentage of minimum reclaim for nodefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [pidAvailable] Defines percentage of minimum reclaim for pid.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim({
    this.imagefsAvailable,
    this.imagefsInodesFree,
    this.memoryAvailable,
    this.nodefsAvailable,
    this.nodefsInodesFree,
    this.pidAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagefsAvailable': ?imagefsAvailable,
      'imagefsInodesFree': ?imagefsInodesFree,
      'memoryAvailable': ?memoryAvailable,
      'nodefsAvailable': ?nodefsAvailable,
      'nodefsInodesFree': ?nodefsInodesFree,
      'pidAvailable': ?pidAvailable,
    };
  }

  factory ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim(
      imagefsAvailable: map['imagefsAvailable'] == null ? null : map['imagefsAvailable'] as String,
      imagefsInodesFree: map['imagefsInodesFree'] == null ? null : map['imagefsInodesFree'] as String,
      memoryAvailable: map['memoryAvailable'] == null ? null : map['memoryAvailable'] as String,
      nodefsAvailable: map['nodefsAvailable'] == null ? null : map['nodefsAvailable'] as String,
      nodefsInodesFree: map['nodefsInodesFree'] == null ? null : map['nodefsInodesFree'] as String,
      pidAvailable: map['pidAvailable'] == null ? null : map['pidAvailable'] as String,
    );
  }
}

