// ignore_for_file: unused_element, unnecessary_cast

/// MachineConfig describes the configuration of a machine.
class MachineConfig3 {
  /// The number of CPU's in the VM instance.
  final int? cpuCount;

  MachineConfig3({
    this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuCountValue = cpuCount;
    if (cpuCountValue != null) {
      map['cpuCount'] = cpuCountValue;
    }
    return map;
  }

  factory MachineConfig3.fromMap(Map<String, dynamic> map) {
    return MachineConfig3(
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
    );
  }
}
