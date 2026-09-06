// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GenerateResourceLimits properties
class GenerateResourceLimits {
  /// The toggle to enable/disable cpu resource limits.
  final pulumi.Input<dynamic>? cpu;

  /// Creates a new [GenerateResourceLimits].
  /// [cpu] The toggle to enable/disable cpu resource limits.
  GenerateResourceLimits({
    pulumi.Input<dynamic>? cpu,
  }) : cpu = cpu ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
    };
  }

  factory GenerateResourceLimits.fromMap(Map<String, dynamic> map) {
    return GenerateResourceLimits(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
