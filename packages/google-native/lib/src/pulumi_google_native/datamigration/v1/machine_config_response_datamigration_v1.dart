// ignore_for_file: unused_element, unnecessary_cast

/// MachineConfig describes the configuration of a machine.
class MachineConfigResponseDatamigrationV1 {
  /// The number of CPU's in the VM instance.
  final int cpuCount;

  MachineConfigResponseDatamigrationV1({
    required this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    return map;
  }

  factory MachineConfigResponseDatamigrationV1.fromMap(
      Map<String, dynamic> map) {
    return MachineConfigResponseDatamigrationV1(
      cpuCount: map['cpuCount'] as int,
    );
  }
}
