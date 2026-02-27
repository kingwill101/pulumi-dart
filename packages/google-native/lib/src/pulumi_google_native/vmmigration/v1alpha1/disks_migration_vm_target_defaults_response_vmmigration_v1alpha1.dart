// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_disk_defaults_response_vmmigration_v1alpha1.dart';
import 'compute_scheduling_response_vmmigration_v1alpha1.dart';
import 'encryption_response_vmmigration_v1alpha1.dart';
import 'network_interface_response_vmmigration_v1alpha1.dart';

/// Details for creation of a VM that migrated data disks will be attached to.
class DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1 {
  /// Optional. Additional licenses to assign to the VM.
  final List<String> additionalLicenses;

  /// Optional. Details of the boot disk of the VM.
  final BootDiskDefaultsResponseVmmigrationV1alpha1 bootDiskDefaults;

  /// Optional. Compute instance scheduling information (if empty default is used).
  final ComputeSchedulingResponseVmmigrationV1alpha1 computeScheduling;

  /// Optional. The encryption to apply to the VM.
  final EncryptionResponseVmmigrationV1alpha1 encryption;

  /// Optional. The hostname to assign to the VM.
  final String hostname;

  /// Optional. A map of labels to associate with the VM.
  final Map<String, String> labels;

  /// The machine type to create the VM with.
  final String machineType;

  /// Optional. The machine type series to create the VM with. For presentation only.
  final String machineTypeSeries;

  /// Optional. The metadata key/value pairs to assign to the VM.
  final Map<String, String> metadata;

  /// Optional. NICs to attach to the VM.
  final List<NetworkInterfaceResponseVmmigrationV1alpha1> networkInterfaces;

  /// Optional. A list of network tags to associate with the VM.
  final List<String> networkTags;

  /// Optional. Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final bool secureBoot;

  /// Optional. The service account to associate the VM with.
  final String serviceAccount;

  /// The name of the VM to create.
  final String vmName;

  DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1({
    required this.additionalLicenses,
    required this.bootDiskDefaults,
    required this.computeScheduling,
    required this.encryption,
    required this.hostname,
    required this.labels,
    required this.machineType,
    required this.machineTypeSeries,
    required this.metadata,
    required this.networkInterfaces,
    required this.networkTags,
    required this.secureBoot,
    required this.serviceAccount,
    required this.vmName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalLicenses'] = additionalLicenses;
    map['bootDiskDefaults'] = bootDiskDefaults.toMap();
    map['computeScheduling'] = computeScheduling.toMap();
    map['encryption'] = encryption.toMap();
    map['hostname'] = hostname;
    map['labels'] = labels;
    map['machineType'] = machineType;
    map['machineTypeSeries'] = machineTypeSeries;
    map['metadata'] = metadata;
    map['networkInterfaces'] = pulumi.Input.encodeList<
        NetworkInterfaceResponseVmmigrationV1alpha1,
        Map<String, dynamic>>(networkInterfaces, (value) => value.toMap());
    map['networkTags'] = networkTags;
    map['secureBoot'] = secureBoot;
    map['serviceAccount'] = serviceAccount;
    map['vmName'] = vmName;
    return map;
  }

  factory DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1(
      additionalLicenses: (map['additionalLicenses'] as List).cast<String>(),
      bootDiskDefaults: BootDiskDefaultsResponseVmmigrationV1alpha1.fromMap(
          (map['bootDiskDefaults'] as Map).cast<String, dynamic>()),
      computeScheduling: ComputeSchedulingResponseVmmigrationV1alpha1.fromMap(
          (map['computeScheduling'] as Map).cast<String, dynamic>()),
      encryption: EncryptionResponseVmmigrationV1alpha1.fromMap(
          (map['encryption'] as Map).cast<String, dynamic>()),
      hostname: map['hostname'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      machineTypeSeries: map['machineTypeSeries'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      networkInterfaces:
          pulumi.Input.decodeList<NetworkInterfaceResponseVmmigrationV1alpha1>(
              map['networkInterfaces'],
              (value) => NetworkInterfaceResponseVmmigrationV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkTags: (map['networkTags'] as List).cast<String>(),
      secureBoot: map['secureBoot'] as bool,
      serviceAccount: map['serviceAccount'] as String,
      vmName: map['vmName'] as String,
    );
  }
}
