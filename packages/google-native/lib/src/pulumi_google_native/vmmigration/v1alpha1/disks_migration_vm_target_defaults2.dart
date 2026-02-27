// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'boot_disk_defaults2.dart';
import 'compute_scheduling2.dart';
import 'encryption3.dart';
import 'network_interface7.dart';

/// Details for creation of a VM that migrated data disks will be attached to.
class DisksMigrationVmTargetDefaults2 {
  /// Optional. Additional licenses to assign to the VM.
  final List<String>? additionalLicenses;

  /// Optional. Details of the boot disk of the VM.
  final BootDiskDefaults2? bootDiskDefaults;

  /// Optional. Compute instance scheduling information (if empty default is used).
  final ComputeScheduling2? computeScheduling;

  /// Optional. The encryption to apply to the VM.
  final Encryption3? encryption;

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
  final List<NetworkInterface7>? networkInterfaces;

  /// Optional. A list of network tags to associate with the VM.
  final List<String>? networkTags;

  /// Optional. Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final bool? secureBoot;

  /// Optional. The service account to associate the VM with.
  final String? serviceAccount;

  /// The name of the VM to create.
  final String vmName;

  DisksMigrationVmTargetDefaults2({
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
      map['networkInterfaces'] =
          Input.encodeList<NetworkInterface7, Map<String, dynamic>>(
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

  factory DisksMigrationVmTargetDefaults2.fromMap(Map<String, dynamic> map) {
    return DisksMigrationVmTargetDefaults2(
      additionalLicenses: map['additionalLicenses'] == null
          ? null
          : (map['additionalLicenses'] as List).cast<String>(),
      bootDiskDefaults: map['bootDiskDefaults'] == null
          ? null
          : BootDiskDefaults2.fromMap(
              (map['bootDiskDefaults'] as Map).cast<String, dynamic>()),
      computeScheduling: map['computeScheduling'] == null
          ? null
          : ComputeScheduling2.fromMap(
              (map['computeScheduling'] as Map).cast<String, dynamic>()),
      encryption: map['encryption'] == null
          ? null
          : Encryption3.fromMap(
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
          : Input.decodeList<NetworkInterface7>(
              map['networkInterfaces'],
              (value) => NetworkInterface7.fromMap(
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
