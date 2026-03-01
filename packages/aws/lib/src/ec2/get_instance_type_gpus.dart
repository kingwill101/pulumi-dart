// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTypeGpus {
  final int count;
  final String manufacturer;

  /// Size of the instance memory, in MiB.
  final int memorySize;
  final String name;

  /// Creates a new [GetInstanceTypeGpus].
  /// [count] Required.
  /// [manufacturer] Required.
  /// [memorySize] Size of the instance memory, in MiB.
  /// [name] Required.
  GetInstanceTypeGpus({
    required this.count,
    required this.manufacturer,
    required this.memorySize,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'manufacturer': manufacturer,
      'memorySize': memorySize,
      'name': name,
    };
  }

  factory GetInstanceTypeGpus.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeGpus(
      count: map['count'] as int,
      manufacturer: map['manufacturer'] as String,
      memorySize: map['memorySize'] as int,
      name: map['name'] as String,
    );
  }
}
