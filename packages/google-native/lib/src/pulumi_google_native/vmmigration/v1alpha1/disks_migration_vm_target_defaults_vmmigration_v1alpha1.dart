// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_disk_defaults_vmmigration_v1alpha1.dart';
import 'compute_scheduling_vmmigration_v1alpha1.dart';
import 'encryption_vmmigration_v1alpha1.dart';
import 'network_interface_vmmigration_v1alpha1.dart';

/// Details for creation of a VM that migrated data disks will be attached to.
class DisksMigrationVmTargetDefaultsVmmigrationV1alpha1 {
  /// Optional. Additional licenses to assign to the VM.
  final List<String>? additionalLicenses;

  /// Optional. Details of the boot disk of the VM.
  final BootDiskDefaultsVmmigrationV1alpha1? bootDiskDefaults;

  /// Optional. Compute instance scheduling information (if empty default is used).
  final ComputeSchedulingVmmigrationV1alpha1? computeScheduling;

  /// Optional. The encryption to apply to the VM.
  final EncryptionVmmigrationV1alpha1? encryption;

  /// Optional. The hostname to assign to the VM.
  final String? hostname;

  /// Optional. A map of labels to associate with the VM.
  final Map<String, String>? labels;

  /// The machine type to create the VM with.
  final String machineType;

  /// Optional. The machine type series to create the VM with. For presentation only.
  final String? machineTypeSeries;

  /// Optional. The metadata key/value pairs to assign to the VM.
  final Map<String, String>? metadata;

  /// Optional. NICs to attach to the VM.
  final List<NetworkInterfaceVmmigrationV1alpha1>? networkInterfaces;

  /// Optional. A list of network tags to associate with the VM.
  final List<String>? networkTags;

  /// Optional. Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final bool? secureBoot;

  /// Optional. The service account to associate the VM with.
  final String? serviceAccount;

  /// The name of the VM to create.
  final String vmName;

  DisksMigrationVmTargetDefaultsVmmigrationV1alpha1({
    this.additionalLicenses,
    this.bootDiskDefaults,
    this.computeScheduling,
    this.encryption,
    this.hostname,
    this.labels,
    required this.machineType,
    this.machineTypeSeries,
    this.metadata,
    this.networkInterfaces,
    this.networkTags,
    this.secureBoot,
    this.serviceAccount,
    required this.vmName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalLicensesValue = additionalLicenses;
    if (additionalLicensesValue != null) {
      map['additionalLicenses'] = additionalLicensesValue;
    }
    final bootDiskDefaultsValue = bootDiskDefaults;
    if (bootDiskDefaultsValue != null) {
      map['bootDiskDefaults'] = bootDiskDefaultsValue.toMap();
    }
    final computeSchedulingValue = computeScheduling;
    if (computeSchedulingValue != null) {
      map['computeScheduling'] = computeSchedulingValue.toMap();
    }
    final encryptionValue = encryption;
    if (encryptionValue != null) {
      map['encryption'] = encryptionValue.toMap();
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['machineType'] = machineType;
    final machineTypeSeriesValue = machineTypeSeries;
    if (machineTypeSeriesValue != null) {
      map['machineTypeSeries'] = machineTypeSeriesValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = pulumi.Input.encodeList<
              NetworkInterfaceVmmigrationV1alpha1, Map<String, dynamic>>(
          networkInterfacesValue, (value) => value.toMap());
    }
    final networkTagsValue = networkTags;
    if (networkTagsValue != null) {
      map['networkTags'] = networkTagsValue;
    }
    final secureBootValue = secureBoot;
    if (secureBootValue != null) {
      map['secureBoot'] = secureBootValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    map['vmName'] = vmName;
    return map;
  }

  factory DisksMigrationVmTargetDefaultsVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DisksMigrationVmTargetDefaultsVmmigrationV1alpha1(
      additionalLicenses: map['additionalLicenses'] == null
          ? null
          : (map['additionalLicenses'] as List).cast<String>(),
      bootDiskDefaults: map['bootDiskDefaults'] == null
          ? null
          : BootDiskDefaultsVmmigrationV1alpha1.fromMap(
              (map['bootDiskDefaults'] as Map).cast<String, dynamic>()),
      computeScheduling: map['computeScheduling'] == null
          ? null
          : ComputeSchedulingVmmigrationV1alpha1.fromMap(
              (map['computeScheduling'] as Map).cast<String, dynamic>()),
      encryption: map['encryption'] == null
          ? null
          : EncryptionVmmigrationV1alpha1.fromMap(
              (map['encryption'] as Map).cast<String, dynamic>()),
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      machineTypeSeries: map['machineTypeSeries'] == null
          ? null
          : map['machineTypeSeries'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<NetworkInterfaceVmmigrationV1alpha1>(
              map['networkInterfaces'],
              (value) => NetworkInterfaceVmmigrationV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkTags: map['networkTags'] == null
          ? null
          : (map['networkTags'] as List).cast<String>(),
      secureBoot: map['secureBoot'] == null ? null : map['secureBoot'] as bool,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      vmName: map['vmName'] as String,
    );
  }
}
