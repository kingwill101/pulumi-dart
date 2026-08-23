// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RuntimePlatform
class RuntimePlatform {
  /// The CPU architecture. You can run your Linux tasks on an ARM-based platform by setting the value to ``ARM64``. This option is available for tasks that run on Linux Amazon EC2 instance or Linux containers on Fargate.
  final pulumi.Input<String>? cpuArchitecture;
  /// The operating system.
  final pulumi.Input<String>? operatingSystemFamily;

  /// Creates a new [RuntimePlatform].
  /// [cpuArchitecture] The CPU architecture. You can run your Linux tasks on an ARM-based platform by setting the value to ``ARM64``. This option is available for tasks that run on Linux Amazon EC2 instance or Linux containers on Fargate.
  /// [operatingSystemFamily] The operating system.
  const RuntimePlatform({
    this.cpuArchitecture,
    this.operatingSystemFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuArchitecture': ?cpuArchitecture,
      'operatingSystemFamily': ?operatingSystemFamily,
    };
  }

  factory RuntimePlatform.fromMap(Map<String, dynamic> map) {
    return RuntimePlatform(
      cpuArchitecture: (() { final guardedValue = map['cpuArchitecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatingSystemFamily: (() { final guardedValue = map['operatingSystemFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
