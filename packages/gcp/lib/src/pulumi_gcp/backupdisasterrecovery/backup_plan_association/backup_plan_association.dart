import 'package:pulumi/pulumi.dart' as pulumi;
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
class BackupPlanAssociation extends pulumi.CustomResource {
  /// The BP with which resource needs to be created
  /// Note:
  /// - A Backup Plan configured for 'compute.googleapis.com/Instance', can only protect instance type resources.
  /// - A Backup Plan configured for 'compute.googleapis.com/Disk' can be used to protect both standard Disks and Regional Disks resources.
  late final pulumi.Output<String> backupPlan;

  /// The id of backupplan association
  late final pulumi.Output<String> backupPlanAssociationId;

  /// The time when the instance was created
  late final pulumi.Output<String> createTime;

  /// Resource name of data source which will be used as storage location for backups taken
  late final pulumi.Output<String> dataSource;

  /// The point in time when the last successful backup was captured from the source
  late final pulumi.Output<String> lastSuccessfulBackupConsistencyTime;

  /// The location for the backupplan association
  late final pulumi.Output<String> location;

  /// The name of backup plan association resource created
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The resource for which BPA needs to be created
  late final pulumi.Output<String> resource;

  /// The resource type of workload on which backupplan is applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", and "compute.googleapis.com/RegionDisk"
  late final pulumi.Output<String> resourceType;

  /// Message for rules config info
  /// Structure is documented below.
  late final pulumi.Output<List<BackupPlanAssociationRulesConfigInfo>>
      rulesConfigInfos;

  /// The time when the instance was updated.
  late final pulumi.Output<String> updateTime;

  BackupPlanAssociation(
    String name, {
    BackupPlanAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
