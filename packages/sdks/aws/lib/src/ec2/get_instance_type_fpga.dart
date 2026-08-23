// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypeFpga {
  final pulumi.Input<int> count;
  final pulumi.Input<String> manufacturer;
  /// Size of the instance memory, in MiB.
  final pulumi.Input<int> memorySize;
  final pulumi.Input<String> name;

  /// Creates a new [GetInstanceTypeFpga].
  /// [count] Required.
  /// [manufacturer] Required.
  /// [memorySize] Size of the instance memory, in MiB.
  /// [name] Required.
  const GetInstanceTypeFpga({
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

  factory GetInstanceTypeFpga.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeFpga(
      count: pulumi.Input.fromValue(map['count'] as int),
      manufacturer: pulumi.Input.fromValue(map['manufacturer'] as String),
      memorySize: pulumi.Input.fromValue(map['memorySize'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
