// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypeInferenceAccelerator {
  final pulumi.Input<int> count;
  final pulumi.Input<String> manufacturer;
  /// Size of the instance memory, in MiB.
  final pulumi.Input<int> memorySize;
  final pulumi.Input<String> name;

  /// Creates a new [GetInstanceTypeInferenceAccelerator].
  /// [count] Required.
  /// [manufacturer] Required.
  /// [memorySize] Size of the instance memory, in MiB.
  /// [name] Required.
  GetInstanceTypeInferenceAccelerator({
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

  factory GetInstanceTypeInferenceAccelerator.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeInferenceAccelerator(
      count: (map['count'] as int).input(),
      manufacturer: (map['manufacturer'] as String).input(),
      memorySize: (map['memorySize'] as int).input(),
      name: (map['name'] as String).input(),
    );
  }
}

