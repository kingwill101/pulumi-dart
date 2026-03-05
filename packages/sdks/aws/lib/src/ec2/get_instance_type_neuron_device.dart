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
      coreCount: pulumi.Input.fromValue(map['coreCount'] as int),
      coreVersion: pulumi.Input.fromValue(map['coreVersion'] as int),
      count: pulumi.Input.fromValue(map['count'] as int),
      memorySize: pulumi.Input.fromValue(map['memorySize'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

