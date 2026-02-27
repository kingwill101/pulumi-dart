import 'package:pulumi/pulumi.dart' as pulumi;
import '../patch_deployment_instance_filter/patch_deployment_instance_filter.dart';
import '../patch_deployment_one_time_schedule/patch_deployment_one_time_schedule.dart';
import '../patch_deployment_patch_config/patch_deployment_patch_config.dart';
import '../patch_deployment_recurring_schedule/patch_deployment_recurring_schedule.dart';
import '../patch_deployment_rollout/patch_deployment_rollout.dart';
import 'patch_deployment_args.dart';

/// Patch deployments are configurations that individual patch jobs use to complete a patch.
/// These configurations include instance filter, package repository settings, and a schedule.
///
///
/// To get more information about PatchDeployment, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/osconfig/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/os-patch-management)
///
/// ## Example Usage
///
/// ### Os Config Patch Deployment Basic
///
///
///
/// ### Os Config Patch Deployment Daily
///
///
///
/// ### Os Config Patch Deployment Daily Midnight
///
///
///
/// ### Os Config Patch Deployment Instance
///
///
///
/// ### Os Config Patch Deployment Full
///
///
///
///
/// ## Import
///
/// PatchDeployment can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PatchDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:osconfig/patchDeployment:PatchDeployment default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/patchDeployment:PatchDeployment default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/patchDeployment:PatchDeployment default {{name}}
/// ```
class PatchDeployment extends pulumi.CustomResource {
  /// Time the patch deployment was created. Timestamp is in RFC3339 text format.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// Description of the patch deployment. Length of the description is limited to 1024 characters.
  late final pulumi.Output<String?> description;

  /// Duration of the patch. After the duration ends, the patch times out.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"
  late final pulumi.Output<String?> duration;

  /// VM instances to patch.
  /// Structure is documented below.
  late final pulumi.Output<PatchDeploymentInstanceFilter> instanceFilter;

  /// The last time a patch job was started by this deployment. Timestamp is in RFC3339 text format.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> lastExecuteTime;

  /// Unique name for the patch deployment resource in a project.
  /// The patch deployment name is in the form: projects/{project_id}/patchDeployments/{patchDeploymentId}.
  late final pulumi.Output<String> name;

  /// Schedule a one-time execution.
  /// Structure is documented below.
  late final pulumi.Output<PatchDeploymentOneTimeSchedule?> oneTimeSchedule;

  /// Patch configuration that is applied.
  /// Structure is documented below.
  late final pulumi.Output<PatchDeploymentPatchConfig?> patchConfig;

  /// A name for the patch deployment in the project. When creating a name the following rules apply:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  late final pulumi.Output<String> patchDeploymentId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Schedule recurring executions.
  /// Structure is documented below.
  late final pulumi.Output<PatchDeploymentRecurringSchedule?> recurringSchedule;

  /// Rollout strategy of the patch job.
  /// Structure is documented below.
  late final pulumi.Output<PatchDeploymentRollout?> rollout;

  /// Time the patch deployment was last updated. Timestamp is in RFC3339 text format.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  PatchDeployment(
    String name, {
    PatchDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:osconfig/patchDeployment:PatchDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.duration = registerOutput<String?>('duration');
    this.instanceFilter =
        registerOutput<PatchDeploymentInstanceFilter>('instanceFilter');
    this.lastExecuteTime = registerOutput<String>('lastExecuteTime');
    this.name = registerOutput<String>('name');
    this.oneTimeSchedule =
        registerOutput<PatchDeploymentOneTimeSchedule?>('oneTimeSchedule');
    this.patchConfig =
        registerOutput<PatchDeploymentPatchConfig?>('patchConfig');
    this.patchDeploymentId = registerOutput<String>('patchDeploymentId');
    this.project = registerOutput<String>('project');
    this.recurringSchedule =
        registerOutput<PatchDeploymentRecurringSchedule?>('recurringSchedule');
    this.rollout = registerOutput<PatchDeploymentRollout?>('rollout');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
