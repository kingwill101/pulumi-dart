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
  const GetInstanceTypeNeuronDevice({
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
      coreCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['coreCount'])),
      coreVersion: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['coreVersion'])),
      count: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['count'])),
      memorySize: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['memorySize'])),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
