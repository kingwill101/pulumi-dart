// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../restore_workload_compute_instance_restore_properties/restore_workload_compute_instance_restore_properties.dart';
import '../restore_workload_compute_instance_target_environment/restore_workload_compute_instance_target_environment.dart';
import '../restore_workload_disk_restore_properties/restore_workload_disk_restore_properties.dart';
import '../restore_workload_disk_target_environment/restore_workload_disk_target_environment.dart';
import '../restore_workload_region_disk_target_environment/restore_workload_region_disk_target_environment.dart';

/// The set of arguments for RestoreWorkload.
class RestoreWorkloadArgs {
  /// Required. The ID of the backup to restore from.
  final Input<String> backupId;

  /// Required. The ID of the backup vault.
  final Input<String> backupVaultId;

  /// Optional. A field mask used to clear server-side default values during restore.
  final Input<String>? clearOverridesFieldMask;

  /// Optional. Compute Engine instance properties to be overridden during restore.
  /// Structure is documented below.
  final Input<RestoreWorkloadComputeInstanceRestoreProperties>?
      computeInstanceRestoreProperties;

  /// Optional. The destination environment for GCE VM restoration.
  /// Structure is documented below.
  final Input<RestoreWorkloadComputeInstanceTargetEnvironment>?
      computeInstanceTargetEnvironment;

  /// Required. The ID of the data source.
  final Input<String> dataSourceId;
  final Input<bool>? deleteRestoredInstance;

  /// Optional. Disk properties to be overridden during restore.
  /// Structure is documented below.
  final Input<RestoreWorkloadDiskRestoreProperties>? diskRestoreProperties;

  /// Optional. The destination environment for zonal disk restoration.
  /// Structure is documented below.
  final Input<RestoreWorkloadDiskTargetEnvironment>? diskTargetEnvironment;

  /// Required. The location for the backup vault.
  final Input<String> location;

  /// Required. The resource name of the backup instance.
  final Input<String>? name;

  /// Optional. The destination environment for regional disk restoration.
  /// Structure is documented below.
  final Input<RestoreWorkloadRegionDiskTargetEnvironment>?
      regionDiskTargetEnvironment;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID
  /// so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed.
  final Input<String>? requestId;

  RestoreWorkloadArgs({
    required this.backupId,
    required this.backupVaultId,
    this.clearOverridesFieldMask,
    this.computeInstanceRestoreProperties,
    this.computeInstanceTargetEnvironment,
    required this.dataSourceId,
    this.deleteRestoredInstance,
    this.diskRestoreProperties,
    this.diskTargetEnvironment,
    required this.location,
    this.name,
    this.regionDiskTargetEnvironment,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['backupVaultId'] = backupVaultId;
    final clearOverridesFieldMaskValue = clearOverridesFieldMask;
    if (clearOverridesFieldMaskValue != null) {
      map['clearOverridesFieldMask'] = clearOverridesFieldMaskValue;
    }
    final computeInstanceRestorePropertiesValue =
        computeInstanceRestoreProperties;
    if (computeInstanceRestorePropertiesValue != null) {
      map['computeInstanceRestoreProperties'] = Input.mapOptionalInputValue<
              RestoreWorkloadComputeInstanceRestoreProperties,
              Map<String, dynamic>>(
          computeInstanceRestorePropertiesValue, (value) => value.toMap());
    }
    final computeInstanceTargetEnvironmentValue =
        computeInstanceTargetEnvironment;
    if (computeInstanceTargetEnvironmentValue != null) {
      map['computeInstanceTargetEnvironment'] = Input.mapOptionalInputValue<
              RestoreWorkloadComputeInstanceTargetEnvironment,
              Map<String, dynamic>>(
          computeInstanceTargetEnvironmentValue, (value) => value.toMap());
    }
    map['dataSourceId'] = dataSourceId;
    final deleteRestoredInstanceValue = deleteRestoredInstance;
    if (deleteRestoredInstanceValue != null) {
      map['deleteRestoredInstance'] = deleteRestoredInstanceValue;
    }
    final diskRestorePropertiesValue = diskRestoreProperties;
    if (diskRestorePropertiesValue != null) {
      map['diskRestoreProperties'] = Input.mapOptionalInputValue<
              RestoreWorkloadDiskRestoreProperties, Map<String, dynamic>>(
          diskRestorePropertiesValue, (value) => value.toMap());
    }
    final diskTargetEnvironmentValue = diskTargetEnvironment;
    if (diskTargetEnvironmentValue != null) {
      map['diskTargetEnvironment'] = Input.mapOptionalInputValue<
              RestoreWorkloadDiskTargetEnvironment, Map<String, dynamic>>(
          diskTargetEnvironmentValue, (value) => value.toMap());
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionDiskTargetEnvironmentValue = regionDiskTargetEnvironment;
    if (regionDiskTargetEnvironmentValue != null) {
      map['regionDiskTargetEnvironment'] = Input.mapOptionalInputValue<
              RestoreWorkloadRegionDiskTargetEnvironment, Map<String, dynamic>>(
          regionDiskTargetEnvironmentValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory RestoreWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadArgs(
      backupId: Input.asInput<String>(map['backupId']),
      backupVaultId: Input.asInput<String>(map['backupVaultId']),
      clearOverridesFieldMask:
          Input.asOptionalInput<String>(map['clearOverridesFieldMask']),
      computeInstanceRestoreProperties: Input.asOptionalInput<
              RestoreWorkloadComputeInstanceRestoreProperties>(
          map['computeInstanceRestoreProperties']),
      computeInstanceTargetEnvironment: Input.asOptionalInput<
              RestoreWorkloadComputeInstanceTargetEnvironment>(
          map['computeInstanceTargetEnvironment']),
      dataSourceId: Input.asInput<String>(map['dataSourceId']),
      deleteRestoredInstance:
          Input.asOptionalInput<bool>(map['deleteRestoredInstance']),
      diskRestoreProperties:
          Input.asOptionalInput<RestoreWorkloadDiskRestoreProperties>(
              map['diskRestoreProperties']),
      diskTargetEnvironment:
          Input.asOptionalInput<RestoreWorkloadDiskTargetEnvironment>(
              map['diskTargetEnvironment']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      regionDiskTargetEnvironment:
          Input.asOptionalInput<RestoreWorkloadRegionDiskTargetEnvironment>(
              map['regionDiskTargetEnvironment']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
