import 'package:pulumi/pulumi.dart';
import 'backup_args10.dart';

/// Creates a Backup for a domain.
/// Auto-naming is currently not supported for this resource.
class Backup10 extends CustomResource {
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

  Backup10(
    String name, {
    BackupArgs10? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:managedidentities/v1beta1:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.domainId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.statusMessage = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
