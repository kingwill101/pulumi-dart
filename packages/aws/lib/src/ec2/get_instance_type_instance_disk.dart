// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTypeInstanceDisk {
  final int count;
  final int size;
  final String type;

  /// Creates a new [GetInstanceTypeInstanceDisk].
  /// [count] Required.
  /// [size] Required.
  /// [type] Required.
  GetInstanceTypeInstanceDisk({
    required this.count,
    required this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['size'] = size;
    map['type'] = type;
    return map;
  }

  factory GetInstanceTypeInstanceDisk.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeInstanceDisk(
      count: map['count'] as int,
      size: map['size'] as int,
      type: map['type'] as String,
    );
  }
}
