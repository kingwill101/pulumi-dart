// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTypeFpga {
  final int count;
  final String manufacturer;

  /// Size of the instance memory, in MiB.
  final int memorySize;
  final String name;

  /// Creates a new [GetInstanceTypeFpga].
  /// [count] Required.
  /// [manufacturer] Required.
  /// [memorySize] Size of the instance memory, in MiB.
  /// [name] Required.
  GetInstanceTypeFpga({
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

  factory GetInstanceTypeFpga.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeFpga(
      count: map['count'] as int,
      manufacturer: map['manufacturer'] as String,
      memorySize: map['memorySize'] as int,
      name: map['name'] as String,
    );
  }
}
