// ignore_for_file: unused_element, unnecessary_cast

/// MachineConfig describes the configuration of a machine.
class MachineConfigDatamigrationV1 {
  /// The number of CPU's in the VM instance.
  final int? cpuCount;

  MachineConfigDatamigrationV1({
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

  factory MachineConfigDatamigrationV1.fromMap(Map<String, dynamic> map) {
    return MachineConfigDatamigrationV1(
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
    );
  }
}
