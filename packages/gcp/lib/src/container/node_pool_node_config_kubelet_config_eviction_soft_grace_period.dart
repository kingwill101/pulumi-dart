// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod {
  /// Defines grace period for the imagefs.available soft eviction threshold
  final String? imagefsAvailable;

  /// Defines grace period for the imagefs.inodesFree soft eviction threshold.
  final String? imagefsInodesFree;

  /// Defines grace period for the memory.available soft eviction threshold.
  final String? memoryAvailable;

  /// Defines grace period for the nodefs.available soft eviction threshold.
  final String? nodefsAvailable;

  /// Defines grace period for the nodefs.inodesFree soft eviction threshold.
  final String? nodefsInodesFree;

  /// Defines grace period for the pid.available soft eviction threshold.
  final String? pidAvailable;

  /// Creates a new [NodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod].
  /// [imagefsAvailable] Defines grace period for the imagefs.available soft eviction threshold
  /// [imagefsInodesFree] Defines grace period for the imagefs.inodesFree soft eviction threshold.
  /// [memoryAvailable] Defines grace period for the memory.available soft eviction threshold.
  /// [nodefsAvailable] Defines grace period for the nodefs.available soft eviction threshold.
  /// [nodefsInodesFree] Defines grace period for the nodefs.inodesFree soft eviction threshold.
  /// [pidAvailable] Defines grace period for the pid.available soft eviction threshold.
  NodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod({
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

  factory NodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod(
      imagefsAvailable: map['imagefsAvailable'] == null
          ? null
          : map['imagefsAvailable'] as String,
      imagefsInodesFree: map['imagefsInodesFree'] == null
          ? null
          : map['imagefsInodesFree'] as String,
      memoryAvailable: map['memoryAvailable'] == null
          ? null
          : map['memoryAvailable'] as String,
      nodefsAvailable: map['nodefsAvailable'] == null
          ? null
          : map['nodefsAvailable'] as String,
      nodefsInodesFree: map['nodefsInodesFree'] == null
          ? null
          : map['nodefsInodesFree'] as String,
      pidAvailable: map['pidAvailable'] == null
          ? null
          : map['pidAvailable'] as String,
    );
  }
}
