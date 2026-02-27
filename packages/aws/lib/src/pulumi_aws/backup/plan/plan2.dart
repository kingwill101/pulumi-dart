import 'package:pulumi/pulumi.dart';
import '../plan_advanced_backup_setting/plan_advanced_backup_setting.dart';
import '../plan_rule/plan_rule.dart';
import '../plan_scan_setting/plan_scan_setting.dart';
import 'plan_args2.dart';

/// Provides an AWS Backup plan resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Plan using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/plan:Plan test <id>
/// ```
class Plan2 extends CustomResource {
  /// An object that specifies backup options for each resource type.
  late final Output<List<PlanAdvancedBackupSetting>?> advancedBackupSettings;

  /// The ARN of the backup plan.
  late final Output<String> arn;

  /// The display name of a backup plan.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A rule object that specifies a scheduled task that is used to back up a selection of resources.
  late final Output<List<PlanRule>> rules;

  /// Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental. Detailed below.
  late final Output<List<PlanScanSetting>?> scanSettings;

  /// Metadata that you can assign to help organize the plans you create. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan.
  late final Output<String> version;

  Plan2(
    String name, {
    PlanArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:backup/plan:Plan',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedBackupSettings =
        registerOutput<List<PlanAdvancedBackupSetting>?>(
            'advancedBackupSettings');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rules = registerOutput<List<PlanRule>>('rules');
    this.scanSettings = registerOutput<List<PlanScanSetting>?>('scanSettings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String>('version');
  }
}
