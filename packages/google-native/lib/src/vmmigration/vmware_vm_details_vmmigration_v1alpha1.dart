// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_vm_details_power_state_vmmigration_v1alpha1.dart';

/// VmwareVmDetails describes a VM in vCenter.
class VmwareVmDetailsVmmigrationV1alpha1 {
  /// The total size of the storage allocated to the VM in MB.
  final String? committedStorage;

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
  final VmwareVmDetailsPowerStateVmmigrationV1alpha1? powerState;

  /// The unique identifier of the VM in vCenter.
  final String? uuid;

  /// The VM's id in the source (note that this is not the MigratingVm's id). This is the moref id of the VM.
  final String? vmId;

  /// Creates a new [VmwareVmDetailsVmmigrationV1alpha1].
  /// [committedStorage] The total size of the storage allocated to the VM in MB.
  /// [committedStorageMb] The total size of the storage allocated to the VM in MB.
  /// [cpuCount] The number of cpus in the VM.
  /// [datacenterDescription] The descriptive name of the vCenter's datacenter this VM is contained in.
  /// [datacenterId] The id of the vCenter's datacenter this VM is contained in.
  /// [diskCount] The number of disks the VM has.
  /// [displayName] The display name of the VM. Note that this is not necessarily unique.
  /// [guestDescription] The VM's OS. See for example https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html for types of strings this might hold.
  /// [memoryMb] The size of the memory of the VM in MB.
  /// [powerState] The power state of the VM at the moment list was taken.
  /// [uuid] The unique identifier of the VM in vCenter.
  /// [vmId] The VM's id in the source (note that this is not the MigratingVm's id). This is the moref id of the VM.
  VmwareVmDetailsVmmigrationV1alpha1({
    this.committedStorage,
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
    return <String, dynamic>{
      'committedStorage': ?committedStorage,
      'committedStorageMb': ?committedStorageMb,
      'cpuCount': ?cpuCount,
      'datacenterDescription': ?datacenterDescription,
      'datacenterId': ?datacenterId,
      'diskCount': ?diskCount,
      'displayName': ?displayName,
      'guestDescription': ?guestDescription,
      'memoryMb': ?memoryMb,
      'powerState': ?powerState == null ? null : powerState!.value,
      'uuid': ?uuid,
      'vmId': ?vmId,
    };
  }

  factory VmwareVmDetailsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return VmwareVmDetailsVmmigrationV1alpha1(
      committedStorage: map['committedStorage'] == null
          ? null
          : map['committedStorage'] as String,
      committedStorageMb: map['committedStorageMb'] == null
          ? null
          : map['committedStorageMb'] as String,
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
      datacenterDescription: map['datacenterDescription'] == null
          ? null
          : map['datacenterDescription'] as String,
      datacenterId: map['datacenterId'] == null
          ? null
          : map['datacenterId'] as String,
      diskCount: map['diskCount'] == null ? null : map['diskCount'] as int,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      guestDescription: map['guestDescription'] == null
          ? null
          : map['guestDescription'] as String,
      memoryMb: map['memoryMb'] == null ? null : map['memoryMb'] as int,
      powerState: map['powerState'] == null
          ? null
          : VmwareVmDetailsPowerStateVmmigrationV1alpha1.fromValue(
              map['powerState'] as String,
            ),
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
    );
  }
}
