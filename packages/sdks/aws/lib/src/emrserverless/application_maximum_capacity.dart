// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationMaximumCapacity {
  /// The maximum allowed CPU for an application.
  final pulumi.Input<String> cpu;

  /// The maximum allowed disk for an application.
  final pulumi.Input<String>? disk;

  /// The maximum allowed resources for an application.
  final pulumi.Input<String> memory;

  /// Creates a new [ApplicationMaximumCapacity].
  /// [cpu] The maximum allowed CPU for an application.
  /// [disk] The maximum allowed disk for an application.
  /// [memory] The maximum allowed resources for an application.
  ApplicationMaximumCapacity({
    required this.cpu,
    this.disk,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': cpu, 'disk': ?disk, 'memory': memory};
  }

  factory ApplicationMaximumCapacity.fromMap(Map<String, dynamic> map) {
    return ApplicationMaximumCapacity(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      disk: (() {
        final guardedValue = map['disk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}
