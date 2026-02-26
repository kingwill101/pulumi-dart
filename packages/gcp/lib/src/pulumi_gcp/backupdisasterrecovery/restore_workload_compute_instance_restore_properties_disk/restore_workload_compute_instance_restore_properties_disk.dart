// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../restore_workload_compute_instance_restore_properties_disk_disk_encryption_key/restore_workload_compute_instance_restore_properties_disk_disk_encryption_key.dart';
import '../restore_workload_compute_instance_restore_properties_disk_guest_os_feature/restore_workload_compute_instance_restore_properties_disk_guest_os_feature.dart';
import '../restore_workload_compute_instance_restore_properties_disk_initialize_params/restore_workload_compute_instance_restore_properties_disk_initialize_params.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesDisk {
  /// Optional. Specifies whether the disk will be auto-deleted when the instance is deleted.
  final bool? autoDelete;

  /// Optional. Indicates that this is a boot disk.
  final bool? boot;

  /// Optional. This is used as an identifier for the disks.
  final String? deviceName;

  /// Optional. Encrypts or decrypts a disk using a customer-supplied encryption key.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey?
      diskEncryptionKey;

  /// Optional. Specifies the disk interface to use for attaching this disk.
  /// Possible values are: `DISK_INTERFACE_UNSPECIFIED`, `SCSI`, `NVME`, `NVDIMM`, `ISCSI`.
  final String? diskInterface;

  /// Optional. The size of the disk in GB.
  final int? diskSizeGb;

  /// Output only. The URI of the disk type resource.
  final String? diskType;

  /// Optional. A list of features to enable on the guest operating system.
  /// Structure is documented below.
  final List<RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature>?
      guestOsFeatures;

  /// Optional. A zero-based index to this disk, where 0 is reserved for the boot disk.
  final int? index;

  /// Optional. Specifies the parameters to initialize this disk.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams?
      initializeParams;

  /// Optional. Type of the resource.
  final String? kind;

  /// Optional. Any valid publicly visible licenses.
  final List<String>? licenses;

  /// Optional. The mode in which to attach this disk.
  /// Possible values are: `DISK_MODE_UNSPECIFIED`, `READ_WRITE`, `READ_ONLY`, `LOCKED`.
  final String? mode;

  /// Optional. Specifies the saved state of the disk.
  /// Possible values are: `DISK_SAVED_STATE_UNSPECIFIED`, `PRESERVED`.
  final String? savedState;

  /// Optional. Specifies a valid partial or full URL to an existing Persistent Disk resource.
  final String? source;

  /// Optional. Specifies the type of the disk.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `SCRATCH`, `PERSISTENT`.
  final String? type;

  RestoreWorkloadComputeInstanceRestorePropertiesDisk({
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.diskEncryptionKey,
    this.diskInterface,
    this.diskSizeGb,
    this.diskType,
    this.guestOsFeatures,
    this.index,
    this.initializeParams,
    this.kind,
    this.licenses,
    this.mode,
    this.savedState,
    this.source,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoDeleteValue = autoDelete;
    if (autoDeleteValue != null) {
      map['autoDelete'] = autoDeleteValue;
    }
    final bootValue = boot;
    if (bootValue != null) {
      map['boot'] = bootValue;
    }
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final diskEncryptionKeyValue = diskEncryptionKey;
    if (diskEncryptionKeyValue != null) {
      map['diskEncryptionKey'] = diskEncryptionKeyValue.toMap();
    }
    final diskInterfaceValue = diskInterface;
    if (diskInterfaceValue != null) {
      map['diskInterface'] = diskInterfaceValue;
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    final guestOsFeaturesValue = guestOsFeatures;
    if (guestOsFeaturesValue != null) {
      map['guestOsFeatures'] = Input.encodeList<
          RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature,
          Map<String, dynamic>>(guestOsFeaturesValue, (value) => value.toMap());
    }
    final indexValue = index;
    if (indexValue != null) {
      map['index'] = indexValue;
    }
    final initializeParamsValue = initializeParams;
    if (initializeParamsValue != null) {
      map['initializeParams'] = initializeParamsValue.toMap();
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final licensesValue = licenses;
    if (licensesValue != null) {
      map['licenses'] = licensesValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final savedStateValue = savedState;
    if (savedStateValue != null) {
      map['savedState'] = savedStateValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesDisk.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesDisk(
      autoDelete: map['autoDelete'] == null ? null : map['autoDelete'] as bool,
      boot: map['boot'] == null ? null : map['boot'] as bool,
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      diskEncryptionKey: map['diskEncryptionKey'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey
              .fromMap(
                  (map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      diskInterface:
          map['diskInterface'] == null ? null : map['diskInterface'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      guestOsFeatures: map['guestOsFeatures'] == null
          ? null
          : Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature>(
              map['guestOsFeatures'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature
                      .fromMap((value as Map).cast<String, dynamic>())),
      index: map['index'] == null ? null : map['index'] as int,
      initializeParams: map['initializeParams'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams
              .fromMap(
                  (map['initializeParams'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      licenses: map['licenses'] == null
          ? null
          : (map['licenses'] as List).cast<String>(),
      mode: map['mode'] == null ? null : map['mode'] as String,
      savedState:
          map['savedState'] == null ? null : map['savedState'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
