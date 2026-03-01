// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigKubeletConfigEvictionSoft {
  /// Defines percentage of soft eviction threshold for imagefs.available. The value must be a percentage between `15%` and `50%`, such as `"20%"`.
  final String? imagefsAvailable;

  /// Defines percentage of soft eviction threshold for imagefs.inodesFree. The value must be a percentage between `5%` and `50%`, such as `"20%"`.
  final String? imagefsInodesFree;

  /// Defines quantity of soft eviction threshold for memory.available. The value must be a quantity, such as `"100Mi"`. The value must be greater than or equal to the GKE default hard eviction threshold of `"100Mi"` and less than 50% of machine memory.
  final String? memoryAvailable;

  /// Defines percentage of soft eviction threshold for nodefs.available. The value must be a percentage between `10%` and `50%`, such as `"20%"`.
  final String? nodefsAvailable;

  /// Defines percentage of soft eviction threshold for nodefs.inodesFree. The value must be a percentage between `5%` and `50%`, such as `"20%"`.
  final String? nodefsInodesFree;

  /// Defines percentage of soft eviction threshold for pid.available. The value must be a percentage between `10%` and `50%`, such as `"20%"`.
  final String? pidAvailable;

  /// Creates a new [ClusterNodePoolNodeConfigKubeletConfigEvictionSoft].
  /// [imagefsAvailable] Defines percentage of soft eviction threshold for imagefs.available. The value must be a percentage between `15%` and `50%`, such as `"20%"`.
  /// [imagefsInodesFree] Defines percentage of soft eviction threshold for imagefs.inodesFree. The value must be a percentage between `5%` and `50%`, such as `"20%"`.
  /// [memoryAvailable] Defines quantity of soft eviction threshold for memory.available. The value must be a quantity, such as `"100Mi"`. The value must be greater than or equal to the GKE default hard eviction threshold of `"100Mi"` and less than 50% of machine memory.
  /// [nodefsAvailable] Defines percentage of soft eviction threshold for nodefs.available. The value must be a percentage between `10%` and `50%`, such as `"20%"`.
  /// [nodefsInodesFree] Defines percentage of soft eviction threshold for nodefs.inodesFree. The value must be a percentage between `5%` and `50%`, such as `"20%"`.
  /// [pidAvailable] Defines percentage of soft eviction threshold for pid.available. The value must be a percentage between `10%` and `50%`, such as `"20%"`.
  ClusterNodePoolNodeConfigKubeletConfigEvictionSoft({
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

  factory ClusterNodePoolNodeConfigKubeletConfigEvictionSoft.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigKubeletConfigEvictionSoft(
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
