// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VvpInstanceResourceSpec {
  /// CPU number.
  final pulumi.Input<int>? cpu;
  /// Memory size.
  final pulumi.Input<int>? memoryGb;

  /// Creates a new [VvpInstanceResourceSpec].
  /// [cpu] CPU number.
  /// [memoryGb] Memory size.
  VvpInstanceResourceSpec({
    this.cpu,
    this.memoryGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memoryGb': ?memoryGb,
    };
  }

  factory VvpInstanceResourceSpec.fromMap(Map<String, dynamic> map) {
    return VvpInstanceResourceSpec(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memoryGb: (() { final guardedValue = map['memoryGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

