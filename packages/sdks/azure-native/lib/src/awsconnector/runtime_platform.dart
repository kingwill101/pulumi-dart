// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RuntimePlatform
class RuntimePlatform {
  /// The CPU architecture. You can run your Linux tasks on an ARM-based platform by setting the value to ``ARM64``. This option is available for tasks that run on Linux Amazon EC2 instance or Linux containers on Fargate.
  final String? cpuArchitecture;
  /// The operating system.
  final String? operatingSystemFamily;

  /// Creates a new [RuntimePlatform].
  /// [cpuArchitecture] The CPU architecture. You can run your Linux tasks on an ARM-based platform by setting the value to ``ARM64``. This option is available for tasks that run on Linux Amazon EC2 instance or Linux containers on Fargate.
  /// [operatingSystemFamily] The operating system.
  RuntimePlatform({
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
      cpuArchitecture: map['cpuArchitecture'] == null ? null : map['cpuArchitecture'] as String,
      operatingSystemFamily: map['operatingSystemFamily'] == null ? null : map['operatingSystemFamily'] as String,
    );
  }
}

