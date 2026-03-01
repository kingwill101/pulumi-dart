// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineAdditionalCapabilities {
  /// Whether to enable the hibernation capability or not.
  final bool? hibernationEnabled;
  /// Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine? Defaults to `false`.
  final bool? ultraSsdEnabled;

  /// Creates a new [LinuxVirtualMachineAdditionalCapabilities].
  /// [hibernationEnabled] Whether to enable the hibernation capability or not.
  /// [ultraSsdEnabled] Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine? Defaults to `false`.
  LinuxVirtualMachineAdditionalCapabilities({
    this.hibernationEnabled,
    this.ultraSsdEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hibernationEnabled': ?hibernationEnabled,
      'ultraSsdEnabled': ?ultraSsdEnabled,
    };
  }

  factory LinuxVirtualMachineAdditionalCapabilities.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineAdditionalCapabilities(
      hibernationEnabled: map['hibernationEnabled'] == null ? null : map['hibernationEnabled'] as bool,
      ultraSsdEnabled: map['ultraSsdEnabled'] == null ? null : map['ultraSsdEnabled'] as bool,
    );
  }
}

