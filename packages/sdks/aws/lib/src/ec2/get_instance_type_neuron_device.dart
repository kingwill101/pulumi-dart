// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypeNeuronDevice {
  final pulumi.Input<int> coreCount;
  final pulumi.Input<int> coreVersion;
  final pulumi.Input<int> count;
  /// Size of the instance memory, in MiB.
  final pulumi.Input<int> memorySize;
  final pulumi.Input<String> name;

  /// Creates a new [GetInstanceTypeNeuronDevice].
  /// [coreCount] Required.
  /// [coreVersion] Required.
  /// [count] Required.
  /// [memorySize] Size of the instance memory, in MiB.
  /// [name] Required.
  GetInstanceTypeNeuronDevice({
    required this.coreCount,
    required this.coreVersion,
    required this.count,
    required this.memorySize,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': coreCount,
      'coreVersion': coreVersion,
      'count': count,
      'memorySize': memorySize,
      'name': name,
    };
  }

  factory GetInstanceTypeNeuronDevice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeNeuronDevice(
      coreCount: (map['coreCount'] as int).input(),
      coreVersion: (map['coreVersion'] as int).input(),
      count: (map['count'] as int).input(),
      memorySize: (map['memorySize'] as int).input(),
      name: (map['name'] as String).input(),
    );
  }
}

