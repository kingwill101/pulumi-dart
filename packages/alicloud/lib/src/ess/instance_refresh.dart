import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_refresh_args.dart';
import 'instance_refresh_checkpoint.dart';
import 'instance_refresh_desired_configuration_container.dart';
import 'instance_refresh_desired_configuration_launch_template_override.dart';

/// ## Import
///
/// ESS instance refresh can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/instanceRefresh:InstanceRefresh example ir-abc123456
/// ```
class InstanceRefresh extends pulumi.CustomResource {
  /// The duration of the pause when the task reaches a checkpoint. Unit: minutes.
  late final pulumi.Output<int> checkpointPauseTime;
  /// The checkpoints for the refresh task. The task automatically pauses for the duration specified by CheckpointPauseTime when the percentage of new instances reaches a specified value. See `checkpoints` below for details.
  late final pulumi.Output<List<InstanceRefreshCheckpoint>?> checkpoints;
  /// The list of containers in the instance. See `desired_configuration_containers` below for details.
  late final pulumi.Output<List<InstanceRefreshDesiredConfigurationContainer>?> desiredConfigurationContainers;
  /// The ID of the image file. This is the image resource used for automatic instance creation.
  late final pulumi.Output<String?> desiredConfigurationImageId;
  /// The ID of the launch template. The scaling group uses this template to obtain launch configuration information.
  late final pulumi.Output<String?> desiredConfigurationLaunchTemplateId;
  /// The instance type information in the launch template overrides. See `desired_configuration_launch_template_overrides` below for details.
  late final pulumi.Output<List<InstanceRefreshDesiredConfigurationLaunchTemplateOverride>?> desiredConfigurationLaunchTemplateOverrides;
  /// The version of the launch template.
  late final pulumi.Output<String?> desiredConfigurationLaunchTemplateVersion;
  /// The percentage by which the number of instances in the scaling group can exceed the group's capacity during the instance refresh.
  late final pulumi.Output<int> maxHealthyPercentage;
  /// The percentage of instances that must be healthy in the scaling group during the instance refresh. The value is a percentage of the scaling group's capacity.
  late final pulumi.Output<int> minHealthyPercentage;
  /// The ID of the scaling group.
  late final pulumi.Output<String> scalingGroupId;
  /// Indicates whether to skip instances that match the desired configuration.
  late final pulumi.Output<bool> skipMatching;
  /// The current status of the instance refresh task. Possible values:
  /// - Pending: The instance refresh task is created and waiting to be scheduled.
  /// - InProgress: The instance refresh task is in progress.
  /// - Paused: The instance refresh task is paused.
  /// - CheckpointPause: The task is paused because it has reached a checkpoint (Checkpoint.Percentage).
  /// - Failed: The instance refresh task failed.
  /// - Successful: The instance refresh task was successful.
  /// - Cancelling: The instance refresh task is being canceled.
  /// - RollbackInProgress: The instance refresh task is being rolled back.
  /// - RollbackSuccessful: The instance refresh task was rolled back successfully. Set RollbackSuccessful to rollback the instance refresh task.
  /// - RollbackFailed: The rollback of the instance refresh task failed.
  /// - Cancelled:  The instance refresh task is canceled. Set Cancelled to cancel the instance refresh task.
  late final pulumi.Output<String> status;

  /// Creates a new [InstanceRefresh].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceRefresh]. {@macro pulumi_ess_instance_refresh_instance_refresh_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceRefresh(
    String name, {
    InstanceRefreshArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/instanceRefresh:InstanceRefresh',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.checkpointPauseTime = registerOutput<int>('checkpointPauseTime');
    this.checkpoints = registerOutput<List<InstanceRefreshCheckpoint>?>('checkpoints');
    this.desiredConfigurationContainers = registerOutput<List<InstanceRefreshDesiredConfigurationContainer>?>('desiredConfigurationContainers');
    this.desiredConfigurationImageId = registerOutput<String?>('desiredConfigurationImageId');
    this.desiredConfigurationLaunchTemplateId = registerOutput<String?>('desiredConfigurationLaunchTemplateId');
    this.desiredConfigurationLaunchTemplateOverrides = registerOutput<List<InstanceRefreshDesiredConfigurationLaunchTemplateOverride>?>('desiredConfigurationLaunchTemplateOverrides');
    this.desiredConfigurationLaunchTemplateVersion = registerOutput<String?>('desiredConfigurationLaunchTemplateVersion');
    this.maxHealthyPercentage = registerOutput<int>('maxHealthyPercentage');
    this.minHealthyPercentage = registerOutput<int>('minHealthyPercentage');
    this.scalingGroupId = registerOutput<String>('scalingGroupId');
    this.skipMatching = registerOutput<bool>('skipMatching');
    this.status = registerOutput<String>('status');
  }
}
