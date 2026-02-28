// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig {
  /// The number of CPU's in the VM instance.
  final int cpuCount;

  /// Creates a new [ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig].
  /// [cpuCount] The number of CPU's in the VM instance.
  ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig({
    required this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    return map;
  }

  factory ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig(
      cpuCount: map['cpuCount'] as int,
    );
  }
}
