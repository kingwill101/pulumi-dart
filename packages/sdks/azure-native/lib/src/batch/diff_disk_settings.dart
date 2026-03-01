// ignore_for_file: unused_element, unnecessary_cast

import 'diff_disk_placement.dart';

/// Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine.
class DiffDiskSettings {
  /// This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at https://learn.microsoft.com/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements and Linux VMs at https://learn.microsoft.com/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements.
  final DiffDiskPlacement? placement;

  /// Creates a new [DiffDiskSettings].
  /// [placement] This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at https://learn.microsoft.com/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements and Linux VMs at https://learn.microsoft.com/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements.
  DiffDiskSettings({
    this.placement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'placement': ?placement == null ? null : placement!.value,
    };
  }

  factory DiffDiskSettings.fromMap(Map<String, dynamic> map) {
    return DiffDiskSettings(
      placement: map['placement'] == null ? null : DiffDiskPlacement.fromValue(map['placement'] as String),
    );
  }
}

