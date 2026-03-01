// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuTuneEmulatorPin {
  /// Sets which CPUs the emulator can be pinned to, allowing for controlled CPU allocation and enhanced performance.
  final String cpuSet;

  /// Creates a new [DomainCpuTuneEmulatorPin].
  /// [cpuSet] Sets which CPUs the emulator can be pinned to, allowing for controlled CPU allocation and enhanced performance.
  DomainCpuTuneEmulatorPin({
    required this.cpuSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuSet': cpuSet,
    };
  }

  factory DomainCpuTuneEmulatorPin.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneEmulatorPin(
      cpuSet: map['cpuSet'] as String,
    );
  }
}

