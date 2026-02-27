// ignore_for_file: unused_element, unnecessary_cast

/// MachineConfig describes the configuration of a machine.
class MachineConfigResponseAlloydbV1alpha {
  /// The number of CPU's in the VM instance.
  final int cpuCount;

  MachineConfigResponseAlloydbV1alpha({
    required this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    return map;
  }

  factory MachineConfigResponseAlloydbV1alpha.fromMap(
      Map<String, dynamic> map) {
    return MachineConfigResponseAlloydbV1alpha(
      cpuCount: map['cpuCount'] as int,
    );
  }
}
