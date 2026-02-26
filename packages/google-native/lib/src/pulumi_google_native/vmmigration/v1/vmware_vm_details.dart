// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_vm_details_power_state.dart';

/// VmwareVmDetails describes a VM in vCenter.
class VmwareVmDetails {
  /// The total size of the storage allocated to the VM in MB.
  final String? committedStorageMb;

  /// The number of cpus in the VM.
  final int? cpuCount;

  /// The descriptive name of the vCenter's datacenter this VM is contained in.
  final String? datacenterDescription;

  /// The id of the vCenter's datacenter this VM is contained in.
  final String? datacenterId;

  /// The number of disks the VM has.
  final int? diskCount;

  /// The display name of the VM. Note that this is not necessarily unique.
  final String? displayName;

  /// The VM's OS. See for example https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html for types of strings this might hold.
  final String? guestDescription;

  /// The size of the memory of the VM in MB.
  final int? memoryMb;

  /// The power state of the VM at the moment list was taken.
  final VmwareVmDetailsPowerState? powerState;

  /// The unique identifier of the VM in vCenter.
  final String? uuid;

  /// The VM's id in the source (note that this is not the MigratingVm's id). This is the moref id of the VM.
  final String? vmId;

  VmwareVmDetails({
    this.committedStorageMb,
    this.cpuCount,
    this.datacenterDescription,
    this.datacenterId,
    this.diskCount,
    this.displayName,
    this.guestDescription,
    this.memoryMb,
    this.powerState,
    this.uuid,
    this.vmId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final committedStorageMbValue = committedStorageMb;
    if (committedStorageMbValue != null) {
      map['committedStorageMb'] = committedStorageMbValue;
    }
    final cpuCountValue = cpuCount;
    if (cpuCountValue != null) {
      map['cpuCount'] = cpuCountValue;
    }
    final datacenterDescriptionValue = datacenterDescription;
    if (datacenterDescriptionValue != null) {
      map['datacenterDescription'] = datacenterDescriptionValue;
    }
    final datacenterIdValue = datacenterId;
    if (datacenterIdValue != null) {
      map['datacenterId'] = datacenterIdValue;
    }
    final diskCountValue = diskCount;
    if (diskCountValue != null) {
      map['diskCount'] = diskCountValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final guestDescriptionValue = guestDescription;
    if (guestDescriptionValue != null) {
      map['guestDescription'] = guestDescriptionValue;
    }
    final memoryMbValue = memoryMb;
    if (memoryMbValue != null) {
      map['memoryMb'] = memoryMbValue;
    }
    final powerStateValue = powerState;
    if (powerStateValue != null) {
      map['powerState'] = powerStateValue.value;
    }
    final uuidValue = uuid;
    if (uuidValue != null) {
      map['uuid'] = uuidValue;
    }
    final vmIdValue = vmId;
    if (vmIdValue != null) {
      map['vmId'] = vmIdValue;
    }
    return map;
  }

  factory VmwareVmDetails.fromMap(Map<String, dynamic> map) {
    return VmwareVmDetails(
      committedStorageMb: map['committedStorageMb'] == null
          ? null
          : map['committedStorageMb'] as String,
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
      datacenterDescription: map['datacenterDescription'] == null
          ? null
          : map['datacenterDescription'] as String,
      datacenterId:
          map['datacenterId'] == null ? null : map['datacenterId'] as String,
      diskCount: map['diskCount'] == null ? null : map['diskCount'] as int,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      guestDescription: map['guestDescription'] == null
          ? null
          : map['guestDescription'] as String,
      memoryMb: map['memoryMb'] == null ? null : map['memoryMb'] as int,
      powerState: map['powerState'] == null
          ? null
          : VmwareVmDetailsPowerState.fromValue(map['powerState'] as String),
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
    );
  }
}
