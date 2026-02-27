import 'package:pulumi/pulumi.dart';
import '../backup_plan_association_rules_config_info/backup_plan_association_rules_config_info.dart';
import 'backup_plan_association_args.dart';

/// A Backup and DR BackupPlanAssociation.
///
///
/// To get more information about BackupPlanAssociation, see:
///
/// * [API documentation](https://cloud.google.com/backup-disaster-recovery/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/backup-disaster-recovery/docs)
///
/// ## Example Usage
///
/// ### Backup Dr Bpa
///
///
///
///
/// ## Import
///
/// BackupPlanAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupPlanAssociations/{{backup_plan_association_id}}`
///
/// * `{{project}}/{{location}}/{{backup_plan_association_id}}`
///
/// * `{{location}}/{{backup_plan_association_id}}`
///
/// When using the `pulumi import` command, BackupPlanAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation default projects/{{project}}/locations/{{location}}/backupPlanAssociations/{{backup_plan_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation default {{project}}/{{location}}/{{backup_plan_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation default {{location}}/{{backup_plan_association_id}}
/// ```
class BackupPlanAssociation extends CustomResource {
  /// The BP with which resource needs to be created
  /// Note:
  /// - A Backup Plan configured for 'compute.googleapis.com/Instance', can only protect instance type resources.
  /// - A Backup Plan configured for 'compute.googleapis.com/Disk' can be used to protect both standard Disks and Regional Disks resources.
  late final Output<String> backupPlan;

  /// The id of backupplan association
  late final Output<String> backupPlanAssociationId;

  /// The time when the instance was created
  late final Output<String> createTime;

  /// Resource name of data source which will be used as storage location for backups taken
  late final Output<String> dataSource;

  /// The point in time when the last successful backup was captured from the source
  late final Output<String> lastSuccessfulBackupConsistencyTime;

  /// The location for the backupplan association
  late final Output<String> location;

  /// The name of backup plan association resource created
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The resource for which BPA needs to be created
  late final Output<String> resource;

  /// The resource type of workload on which backupplan is applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", and "compute.googleapis.com/RegionDisk"
  late final Output<String> resourceType;

  /// Message for rules config info
  /// Structure is documented below.
  late final Output<List<BackupPlanAssociationRulesConfigInfo>>
      rulesConfigInfos;

  /// The time when the instance was updated.
  late final Output<String> updateTime;

  BackupPlanAssociation(
    String name, {
    BackupPlanAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupPlan = registerOutput<String>('backupPlan');
    this.backupPlanAssociationId =
        registerOutput<String>('backupPlanAssociationId');
    this.createTime = registerOutput<String>('createTime');
    this.dataSource = registerOutput<String>('dataSource');
    this.lastSuccessfulBackupConsistencyTime =
        registerOutput<String>('lastSuccessfulBackupConsistencyTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resource = registerOutput<String>('resource');
    this.resourceType = registerOutput<String>('resourceType');
    this.rulesConfigInfos =
        registerOutput<List<BackupPlanAssociationRulesConfigInfo>>(
            'rulesConfigInfos');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
