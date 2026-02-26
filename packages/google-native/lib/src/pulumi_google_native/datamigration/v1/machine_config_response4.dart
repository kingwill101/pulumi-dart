// ignore_for_file: unused_element, unnecessary_cast

/// MachineConfig describes the configuration of a machine.
class MachineConfigResponse4 {
  /// The number of CPU's in the VM instance.
  final int cpuCount;

  MachineConfigResponse4({
    required this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    return map;
  }

  factory MachineConfigResponse4.fromMap(Map<String, dynamic> map) {
    return MachineConfigResponse4(
      cpuCount: map['cpuCount'] as int,
    );
  }
}
