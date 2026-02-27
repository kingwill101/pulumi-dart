import 'package:pulumi/pulumi.dart' as pulumi;
import '../restore_workload_compute_instance_restore_properties/restore_workload_compute_instance_restore_properties.dart';
import '../restore_workload_compute_instance_target_environment/restore_workload_compute_instance_target_environment.dart';
import '../restore_workload_disk_restore_properties/restore_workload_disk_restore_properties.dart';
import '../restore_workload_disk_target_environment/restore_workload_disk_target_environment.dart';
import '../restore_workload_region_disk_target_environment/restore_workload_region_disk_target_environment.dart';
import '../restore_workload_target_resource/restore_workload_target_resource.dart';
import 'restore_workload_args.dart';

/// An imperative resource that triggers a GCBDR restoration event.
/// Creating this resource will initiate a restore operation from a specified backup.
/// The resource represents the restore operation and its result.
///
///
/// ## Example Usage
///
/// ### Backup Dr Restore Workload Compute Instance Basic
///
///
///
/// ### Backup Dr Restore Workload Compute Instance Full
///
///
///
/// ### Backup Dr Restore Workload Disk Basic
///
///
///
/// ### Backup Dr Restore Workload Regional Disk
///
///
///
/// ### Backup Dr Restore Workload Without Delete
///
///
///
///
/// ## Import
///
/// RestoreWorkload can be imported using any of these accepted formats:
///
/// * `/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RestoreWorkload can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/restoreWorkload:RestoreWorkload default /{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/restoreWorkload:RestoreWorkload default {{name}}
/// ```
class RestoreWorkload extends pulumi.CustomResource {
  /// Required. The ID of the backup to restore from.
  late final pulumi.Output<String> backupId;

  /// Required. The ID of the backup vault.
  late final pulumi.Output<String> backupVaultId;

  /// Optional. A field mask used to clear server-side default values during restore.
  late final pulumi.Output<String?> clearOverridesFieldMask;

  /// Optional. Compute Engine instance properties to be overridden during restore.
  /// Structure is documented below.
  late final pulumi.Output<RestoreWorkloadComputeInstanceRestoreProperties?>
      computeInstanceRestoreProperties;

  /// Optional. The destination environment for GCE VM restoration.
  /// Structure is documented below.
  late final pulumi.Output<RestoreWorkloadComputeInstanceTargetEnvironment?>
      computeInstanceTargetEnvironment;

  /// Required. The ID of the data source.
  late final pulumi.Output<String> dataSourceId;
  late final pulumi.Output<bool?> deleteRestoredInstance;

  /// Optional. Disk properties to be overridden during restore.
  /// Structure is documented below.
  late final pulumi.Output<RestoreWorkloadDiskRestoreProperties?>
      diskRestoreProperties;

  /// Optional. The destination environment for zonal disk restoration.
  /// Structure is documented below.
  late final pulumi.Output<RestoreWorkloadDiskTargetEnvironment?>
      diskTargetEnvironment;

  /// Required. The location for the backup vault.
  late final pulumi.Output<String> location;

  /// Required. The resource name of the backup instance.
  late final pulumi.Output<String> name;

  /// Optional. The destination environment for regional disk restoration.
  /// Structure is documented below.
  late final pulumi.Output<RestoreWorkloadRegionDiskTargetEnvironment?>
      regionDiskTargetEnvironment;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID
  /// so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed.
  late final pulumi.Output<String?> requestId;

  /// Output only. Details of the target resource created/modified as part of restore.
  /// Structure is documented below.
  late final pulumi.Output<List<RestoreWorkloadTargetResource>> targetResources;

  RestoreWorkload(
    String name, {
    RestoreWorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/restoreWorkload:RestoreWorkload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupId = registerOutput<String>('backupId');
    this.backupVaultId = registerOutput<String>('backupVaultId');
    this.clearOverridesFieldMask =
        registerOutput<String?>('clearOverridesFieldMask');
    this.computeInstanceRestoreProperties =
        registerOutput<RestoreWorkloadComputeInstanceRestoreProperties?>(
            'computeInstanceRestoreProperties');
    this.computeInstanceTargetEnvironment =
        registerOutput<RestoreWorkloadComputeInstanceTargetEnvironment?>(
            'computeInstanceTargetEnvironment');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.deleteRestoredInstance =
        registerOutput<bool?>('deleteRestoredInstance');
    this.diskRestoreProperties =
        registerOutput<RestoreWorkloadDiskRestoreProperties?>(
            'diskRestoreProperties');
    this.diskTargetEnvironment =
        registerOutput<RestoreWorkloadDiskTargetEnvironment?>(
            'diskTargetEnvironment');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.regionDiskTargetEnvironment =
        registerOutput<RestoreWorkloadRegionDiskTargetEnvironment?>(
            'regionDiskTargetEnvironment');
    this.requestId = registerOutput<String?>('requestId');
    this.targetResources =
        registerOutput<List<RestoreWorkloadTargetResource>>('targetResources');
  }
}
