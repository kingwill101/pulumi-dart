// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTypeInferenceAccelerator {
  final int count;
  final String manufacturer;

  /// Size of the instance memory, in MiB.
  final int memorySize;
  final String name;

  GetInstanceTypeInferenceAccelerator({
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

  factory GetInstanceTypeInferenceAccelerator.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTypeInferenceAccelerator(
      count: map['count'] as int,
      manufacturer: map['manufacturer'] as String,
      memorySize: map['memorySize'] as int,
      name: map['name'] as String,
    );
  }
}
