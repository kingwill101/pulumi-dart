// ignore_for_file: unused_element, unnecessary_cast


class NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim {
  /// Defines percentage of minimum reclaim for imagefs.available.
  final String? imagefsAvailable;
  /// Defines percentage of minimum reclaim for imagefs.inodesFree.
  final String? imagefsInodesFree;
  /// Defines percentage of minimum reclaim for memory.available.
  final String? memoryAvailable;
  /// Defines percentage of minimum reclaim for nodefs.available.
  final String? nodefsAvailable;
  /// Defines percentage of minimum reclaim for nodefs.inodesFree.
  final String? nodefsInodesFree;
  /// Defines percentage of minimum reclaim for pid.available.
  final String? pidAvailable;

  /// Creates a new [NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim].
  /// [imagefsAvailable] Defines percentage of minimum reclaim for imagefs.available.
  /// [imagefsInodesFree] Defines percentage of minimum reclaim for imagefs.inodesFree.
  /// [memoryAvailable] Defines percentage of minimum reclaim for memory.available.
  /// [nodefsAvailable] Defines percentage of minimum reclaim for nodefs.available.
  /// [nodefsInodesFree] Defines percentage of minimum reclaim for nodefs.inodesFree.
  /// [pidAvailable] Defines percentage of minimum reclaim for pid.available.
  NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim({
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

  factory NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim(
      imagefsAvailable: map['imagefsAvailable'] == null ? null : map['imagefsAvailable'] as String,
      imagefsInodesFree: map['imagefsInodesFree'] == null ? null : map['imagefsInodesFree'] as String,
      memoryAvailable: map['memoryAvailable'] == null ? null : map['memoryAvailable'] as String,
      nodefsAvailable: map['nodefsAvailable'] == null ? null : map['nodefsAvailable'] as String,
      nodefsInodesFree: map['nodefsInodesFree'] == null ? null : map['nodefsInodesFree'] as String,
      pidAvailable: map['pidAvailable'] == null ? null : map['pidAvailable'] as String,
    );
  }
}

