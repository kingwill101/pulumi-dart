// ignore_for_file: unused_element, unnecessary_cast

/// MachineConfig describes the configuration of a machine.
class MachineConfigResponse {
  /// The number of CPU's in the VM instance.
  final int cpuCount;

  /// Creates a new [MachineConfigResponse].
  /// [cpuCount] The number of CPU's in the VM instance.
  MachineConfigResponse({required this.cpuCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpuCount': cpuCount};
  }

  factory MachineConfigResponse.fromMap(Map<String, dynamic> map) {
    return MachineConfigResponse(cpuCount: map['cpuCount'] as int);
  }
}
