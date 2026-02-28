// ignore_for_file: unused_element, unnecessary_cast

/// MachineConfig describes the configuration of a machine.
class MachineConfigAlloydbV1alpha {
  /// The number of CPU's in the VM instance.
  final int? cpuCount;

  /// Creates a new [MachineConfigAlloydbV1alpha].
  /// [cpuCount] The number of CPU's in the VM instance.
  MachineConfigAlloydbV1alpha({
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

  factory MachineConfigAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return MachineConfigAlloydbV1alpha(
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
    );
  }
}
