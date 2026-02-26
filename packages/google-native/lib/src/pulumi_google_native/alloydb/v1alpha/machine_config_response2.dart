// ignore_for_file: unused_element, unnecessary_cast

/// MachineConfig describes the configuration of a machine.
class MachineConfigResponse2 {
  /// The number of CPU's in the VM instance.
  final int cpuCount;

  MachineConfigResponse2({
    required this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    return map;
  }

  factory MachineConfigResponse2.fromMap(Map<String, dynamic> map) {
    return MachineConfigResponse2(
      cpuCount: map['cpuCount'] as int,
    );
  }
}
