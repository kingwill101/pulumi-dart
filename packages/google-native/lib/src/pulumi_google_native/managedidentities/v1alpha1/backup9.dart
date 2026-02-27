import 'package:pulumi/pulumi.dart' hide Config;
import 'backup_args9.dart';

/// Creates a Backup for a domain.
/// Auto-naming is currently not supported for this resource.
class Backup9 extends CustomResource {
  /// Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.
  late final Output<String> backupId;

  /// The time the backups was created.
  late final Output<String> createTime;

  /// Optional. A short description of the backup.
  late final Output<String> description;
  late final Output<String> domainId;

  /// Optional. Resource labels to represent user provided metadata.
  late final Output<Map<String, String>> labels;

  /// The unique name of the Backup in the form of projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}
  late final Output<String> name;
  late final Output<String> project;

  /// The current state of the backup.
  late final Output<String> state;

  /// Additional information about the current status of this backup, if available.
  late final Output<String> statusMessage;

  /// Indicates whether it’s an on-demand backup or scheduled.
  late final Output<String> type;

  /// Last update time.
  late final Output<String> updateTime;

  Backup9(
    String name, {
    BackupArgs9? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:managedidentities/v1alpha1:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupId = registerOutput<String>('backupId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.domainId = registerOutput<String>('domainId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
