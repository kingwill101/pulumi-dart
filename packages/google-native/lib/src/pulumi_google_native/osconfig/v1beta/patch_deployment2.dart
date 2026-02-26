import 'package:pulumi/pulumi.dart';
import 'one_time_schedule_response2.dart';
import 'patch_config_response2.dart';
import 'patch_deployment_args2.dart';
import 'patch_instance_filter_response2.dart';
import 'patch_rollout_response2.dart';
import 'recurring_schedule_response2.dart';

/// Create an OS Config patch deployment.
class PatchDeployment2 extends CustomResource {
  /// Time the patch deployment was created. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final Output<String> createTime;

  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  late final Output<String> description;

  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  late final Output<String> duration;

  /// VM instances to patch.
  late final Output<PatchInstanceFilterResponse2> instanceFilter;

  /// The last time a patch job was started by this deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final Output<String> lastExecuteTime;

  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  late final Output<String> name;

  /// Schedule a one-time execution.
  late final Output<OneTimeScheduleResponse2> oneTimeSchedule;

  /// Optional. Patch configuration that is applied.
  late final Output<PatchConfigResponse2> patchConfig;

  /// Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  late final Output<String> patchDeploymentId;
  late final Output<String> project;

  /// Schedule recurring executions.
  late final Output<RecurringScheduleResponse2> recurringSchedule;

  /// Optional. Rollout strategy of the patch job.
  late final Output<PatchRolloutResponse2> rollout;

  /// Current state of the patch deployment.
  late final Output<String> state;

  /// Time the patch deployment was last updated. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final Output<String> updateTime;

  PatchDeployment2(
    String name, {
    PatchDeploymentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:osconfig/v1beta:PatchDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.duration = registerOutput<String>('duration');
    this.instanceFilter =
        registerOutput<PatchInstanceFilterResponse2>('instanceFilter');
    this.lastExecuteTime = registerOutput<String>('lastExecuteTime');
    this.name = registerOutput<String>('name');
    this.oneTimeSchedule =
        registerOutput<OneTimeScheduleResponse2>('oneTimeSchedule');
    this.patchConfig = registerOutput<PatchConfigResponse2>('patchConfig');
    this.patchDeploymentId = registerOutput<String>('patchDeploymentId');
    this.project = registerOutput<String>('project');
    this.recurringSchedule =
        registerOutput<RecurringScheduleResponse2>('recurringSchedule');
    this.rollout = registerOutput<PatchRolloutResponse2>('rollout');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
