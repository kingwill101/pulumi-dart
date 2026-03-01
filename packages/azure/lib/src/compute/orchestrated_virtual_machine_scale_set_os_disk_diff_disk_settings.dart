// ignore_for_file: unused_element, unnecessary_cast


class OrchestratedVirtualMachineScaleSetOsDiskDiffDiskSettings {
  /// Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is `Local`. Changing this forces a new resource to be created.
  final String option;
  /// Specifies where to store the Ephemeral Disk. Possible values are `CacheDisk` and `ResourceDisk`. Defaults to `CacheDisk`. Changing this forces a new resource to be created.
  final String? placement;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsDiskDiffDiskSettings].
  /// [option] Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is `Local`. Changing this forces a new resource to be created.
  /// [placement] Specifies where to store the Ephemeral Disk. Possible values are `CacheDisk` and `ResourceDisk`. Defaults to `CacheDisk`. Changing this forces a new resource to be created.
  OrchestratedVirtualMachineScaleSetOsDiskDiffDiskSettings({
    required this.option,
    this.placement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'option': option,
      'placement': ?placement,
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsDiskDiffDiskSettings.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsDiskDiffDiskSettings(
      option: map['option'] as String,
      placement: map['placement'] == null ? null : map['placement'] as String,
    );
  }
}

