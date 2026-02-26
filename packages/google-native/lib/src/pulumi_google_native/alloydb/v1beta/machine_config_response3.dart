// ignore_for_file: unused_element, unnecessary_cast

/// MachineConfig describes the configuration of a machine.
class MachineConfigResponse3 {
  /// The number of CPU's in the VM instance.
  final int cpuCount;

  MachineConfigResponse3({
    required this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    return map;
  }

  factory MachineConfigResponse3.fromMap(Map<String, dynamic> map) {
    return MachineConfigResponse3(
      cpuCount: map['cpuCount'] as int,
    );
  }
}
