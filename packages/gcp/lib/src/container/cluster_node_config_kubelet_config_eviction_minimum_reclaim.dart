// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigKubeletConfigEvictionMinimumReclaim {
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

  /// Creates a new [ClusterNodeConfigKubeletConfigEvictionMinimumReclaim].
  /// [imagefsAvailable] Defines percentage of minimum reclaim for imagefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [imagefsInodesFree] Defines percentage of minimum reclaim for imagefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [memoryAvailable] Defines percentage of minimum reclaim for memory.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [nodefsAvailable] Defines percentage of minimum reclaim for nodefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [nodefsInodesFree] Defines percentage of minimum reclaim for nodefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [pidAvailable] Defines percentage of minimum reclaim for pid.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  ClusterNodeConfigKubeletConfigEvictionMinimumReclaim({
    this.imagefsAvailable,
    this.imagefsInodesFree,
    this.memoryAvailable,
    this.nodefsAvailable,
    this.nodefsInodesFree,
    this.pidAvailable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imagefsAvailableValue = imagefsAvailable;
    if (imagefsAvailableValue != null) {
      map['imagefsAvailable'] = imagefsAvailableValue;
    }
    final imagefsInodesFreeValue = imagefsInodesFree;
    if (imagefsInodesFreeValue != null) {
      map['imagefsInodesFree'] = imagefsInodesFreeValue;
    }
    final memoryAvailableValue = memoryAvailable;
    if (memoryAvailableValue != null) {
      map['memoryAvailable'] = memoryAvailableValue;
    }
    final nodefsAvailableValue = nodefsAvailable;
    if (nodefsAvailableValue != null) {
      map['nodefsAvailable'] = nodefsAvailableValue;
    }
    final nodefsInodesFreeValue = nodefsInodesFree;
    if (nodefsInodesFreeValue != null) {
      map['nodefsInodesFree'] = nodefsInodesFreeValue;
    }
    final pidAvailableValue = pidAvailable;
    if (pidAvailableValue != null) {
      map['pidAvailable'] = pidAvailableValue;
    }
    return map;
  }

  factory ClusterNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodeConfigKubeletConfigEvictionMinimumReclaim(
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
      pidAvailable:
          map['pidAvailable'] == null ? null : map['pidAvailable'] as String,
    );
  }
}
