// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../restore_workload_compute_instance_restore_properties/restore_workload_compute_instance_restore_properties.dart';
import '../restore_workload_compute_instance_target_environment/restore_workload_compute_instance_target_environment.dart';
import '../restore_workload_disk_restore_properties/restore_workload_disk_restore_properties.dart';
import '../restore_workload_disk_target_environment/restore_workload_disk_target_environment.dart';
import '../restore_workload_region_disk_target_environment/restore_workload_region_disk_target_environment.dart';

/// The set of arguments for RestoreWorkload.
class RestoreWorkloadArgs {
  /// Required. The ID of the backup to restore from.
  final pulumi.Input<String> backupId;

  /// Required. The ID of the backup vault.
  final pulumi.Input<String> backupVaultId;

  /// Optional. A field mask used to clear server-side default values during restore.
  final pulumi.Input<String>? clearOverridesFieldMask;

  /// Optional. Compute Engine instance properties to be overridden during restore.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestoreProperties>?
      computeInstanceRestoreProperties;

  /// Optional. The destination environment for GCE VM restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceTargetEnvironment>?
      computeInstanceTargetEnvironment;

  /// Required. The ID of the data source.
  final pulumi.Input<String> dataSourceId;
  final pulumi.Input<bool>? deleteRestoredInstance;

  /// Optional. Disk properties to be overridden during restore.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadDiskRestoreProperties>?
      diskRestoreProperties;

  /// Optional. The destination environment for zonal disk restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadDiskTargetEnvironment>?
      diskTargetEnvironment;

  /// Required. The location for the backup vault.
  final pulumi.Input<String> location;

  /// Required. The resource name of the backup instance.
  final pulumi.Input<String>? name;

  /// Optional. The destination environment for regional disk restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadRegionDiskTargetEnvironment>?
      regionDiskTargetEnvironment;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID
  /// so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed.
  final pulumi.Input<String>? requestId;

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
      map['computeInstanceRestoreProperties'] =
          pulumi.Input.mapOptionalInputValue<
                  RestoreWorkloadComputeInstanceRestoreProperties,
                  Map<String, dynamic>>(
              computeInstanceRestorePropertiesValue, (value) => value.toMap());
    }
    final computeInstanceTargetEnvironmentValue =
        computeInstanceTargetEnvironment;
    if (computeInstanceTargetEnvironmentValue != null) {
      map['computeInstanceTargetEnvironment'] =
          pulumi.Input.mapOptionalInputValue<
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
      map['diskRestoreProperties'] = pulumi.Input.mapOptionalInputValue<
              RestoreWorkloadDiskRestoreProperties, Map<String, dynamic>>(
          diskRestorePropertiesValue, (value) => value.toMap());
    }
    final diskTargetEnvironmentValue = diskTargetEnvironment;
    if (diskTargetEnvironmentValue != null) {
      map['diskTargetEnvironment'] = pulumi.Input.mapOptionalInputValue<
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
      map['regionDiskTargetEnvironment'] = pulumi.Input.mapOptionalInputValue<
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
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      backupVaultId: pulumi.Input.asInput<String>(map['backupVaultId']),
      clearOverridesFieldMask:
          pulumi.Input.asOptionalInput<String>(map['clearOverridesFieldMask']),
      computeInstanceRestoreProperties: pulumi.Input.asOptionalInput<
              RestoreWorkloadComputeInstanceRestoreProperties>(
          map['computeInstanceRestoreProperties']),
      computeInstanceTargetEnvironment: pulumi.Input.asOptionalInput<
              RestoreWorkloadComputeInstanceTargetEnvironment>(
          map['computeInstanceTargetEnvironment']),
      dataSourceId: pulumi.Input.asInput<String>(map['dataSourceId']),
      deleteRestoredInstance:
          pulumi.Input.asOptionalInput<bool>(map['deleteRestoredInstance']),
      diskRestoreProperties:
          pulumi.Input.asOptionalInput<RestoreWorkloadDiskRestoreProperties>(
              map['diskRestoreProperties']),
      diskTargetEnvironment:
          pulumi.Input.asOptionalInput<RestoreWorkloadDiskTargetEnvironment>(
              map['diskTargetEnvironment']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      regionDiskTargetEnvironment: pulumi.Input.asOptionalInput<
              RestoreWorkloadRegionDiskTargetEnvironment>(
          map['regionDiskTargetEnvironment']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
