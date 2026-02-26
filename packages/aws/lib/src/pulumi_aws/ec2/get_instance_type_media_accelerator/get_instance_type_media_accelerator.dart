// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTypeMediaAccelerator {
  final int count;
  final String manufacturer;

  /// Size of the instance memory, in MiB.
  final int memorySize;
  final String name;

  GetInstanceTypeMediaAccelerator({
    required this.count,
    required this.manufacturer,
    required this.memorySize,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['manufacturer'] = manufacturer;
    map['memorySize'] = memorySize;
    map['name'] = name;
    return map;
  }

  factory GetInstanceTypeMediaAccelerator.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeMediaAccelerator(
      count: map['count'] as int,
      manufacturer: map['manufacturer'] as String,
      memorySize: map['memorySize'] as int,
      name: map['name'] as String,
    );
  }
}
