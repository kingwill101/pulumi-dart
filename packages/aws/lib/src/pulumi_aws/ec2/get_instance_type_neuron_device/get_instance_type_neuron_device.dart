// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTypeNeuronDevice {
  final int coreCount;
  final int coreVersion;
  final int count;

  /// Size of the instance memory, in MiB.
  final int memorySize;
  final String name;

  GetInstanceTypeNeuronDevice({
    required this.coreCount,
    required this.coreVersion,
    required this.count,
    required this.memorySize,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreCount'] = coreCount;
    map['coreVersion'] = coreVersion;
    map['count'] = count;
    map['memorySize'] = memorySize;
    map['name'] = name;
    return map;
  }

  factory GetInstanceTypeNeuronDevice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeNeuronDevice(
      coreCount: map['coreCount'] as int,
      coreVersion: map['coreVersion'] as int,
      count: map['count'] as int,
      memorySize: map['memorySize'] as int,
      name: map['name'] as String,
    );
  }
}
