// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigKubeletConfigEvictionSoft {
  /// Defines percentage of soft eviction threshold for imagefs.available.
  final String? imagefsAvailable;

  /// Defines percentage of soft eviction threshold for imagefs.inodesFree.
  final String? imagefsInodesFree;

  /// Defines quantity of soft eviction threshold for memory.available.
  final String? memoryAvailable;

  /// Defines percentage of soft eviction threshold for nodefs.available.
  final String? nodefsAvailable;

  /// Defines percentage of soft eviction threshold for nodefs.inodesFree.
  final String? nodefsInodesFree;

  /// Defines percentage of soft eviction threshold for pid.available.
  final String? pidAvailable;

  NodePoolNodeConfigKubeletConfigEvictionSoft({
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

  factory NodePoolNodeConfigKubeletConfigEvictionSoft.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigKubeletConfigEvictionSoft(
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
