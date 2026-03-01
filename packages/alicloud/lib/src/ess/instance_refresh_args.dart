// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_refresh_checkpoint.dart';
import 'instance_refresh_desired_configuration_container.dart';
import 'instance_refresh_desired_configuration_launch_template_override.dart';

/// {@template pulumi_ess_instance_refresh_instance_refresh_args_doc}
/// The set of arguments for InstanceRefresh.
/// {@endtemplate}
/// {@macro pulumi_ess_instance_refresh_instance_refresh_args_doc}
class InstanceRefreshArgs {
  /// The duration of the pause when the task reaches a checkpoint. Unit: minutes.
  final pulumi.Input<int>? checkpointPauseTime;
  /// The checkpoints for the refresh task. The task automatically pauses for the duration specified by CheckpointPauseTime when the percentage of new instances reaches a specified value. See `checkpoints` below for details.
  final pulumi.Input<List<InstanceRefreshCheckpoint>>? checkpoints;
  /// The list of containers in the instance. See `desired_configuration_containers` below for details.
  final pulumi.Input<List<InstanceRefreshDesiredConfigurationContainer>>? desiredConfigurationContainers;
  /// The ID of the image file. This is the image resource used for automatic instance creation.
  final pulumi.Input<String>? desiredConfigurationImageId;
  /// The ID of the launch template. The scaling group uses this template to obtain launch configuration information.
  final pulumi.Input<String>? desiredConfigurationLaunchTemplateId;
  /// The instance type information in the launch template overrides. See `desired_configuration_launch_template_overrides` below for details.
  final pulumi.Input<List<InstanceRefreshDesiredConfigurationLaunchTemplateOverride>>? desiredConfigurationLaunchTemplateOverrides;
  /// The version of the launch template.
  final pulumi.Input<String>? desiredConfigurationLaunchTemplateVersion;
  /// The percentage by which the number of instances in the scaling group can exceed the group's capacity during the instance refresh.
  final pulumi.Input<int>? maxHealthyPercentage;
  /// The percentage of instances that must be healthy in the scaling group during the instance refresh. The value is a percentage of the scaling group's capacity.
  final pulumi.Input<int>? minHealthyPercentage;
  /// The ID of the scaling group.
  final pulumi.Input<String> scalingGroupId;
  /// Indicates whether to skip instances that match the desired configuration.
  final pulumi.Input<bool>? skipMatching;
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
  final pulumi.Input<String>? status;

  /// Creates a new [InstanceRefreshArgs].
  /// [checkpointPauseTime] The duration of the pause when the task reaches a checkpoint. Unit: minutes.
  /// [checkpoints] The checkpoints for the refresh task. The task automatically pauses for the duration specified by CheckpointPauseTime when the percentage of new instances reaches a specified value. See `checkpoints` below for details.
  /// [desiredConfigurationContainers] The list of containers in the instance. See `desired_configuration_containers` below for details.
  /// [desiredConfigurationImageId] The ID of the image file. This is the image resource used for automatic instance creation.
  /// [desiredConfigurationLaunchTemplateId] The ID of the launch template. The scaling group uses this template to obtain launch configuration information.
  /// [desiredConfigurationLaunchTemplateOverrides] The instance type information in the launch template overrides. See `desired_configuration_launch_template_overrides` below for details.
  /// [desiredConfigurationLaunchTemplateVersion] The version of the launch template.
  /// [maxHealthyPercentage] The percentage by which the number of instances in the scaling group can exceed the group's capacity during the instance refresh.
  /// [minHealthyPercentage] The percentage of instances that must be healthy in the scaling group during the instance refresh. The value is a percentage of the scaling group's capacity.
  /// [scalingGroupId] The ID of the scaling group.
  /// [skipMatching] Indicates whether to skip instances that match the desired configuration.
  /// [status] The current status of the instance refresh task. Possible values:
  InstanceRefreshArgs({
    int? checkpointPauseTime,
    List<InstanceRefreshCheckpoint>? checkpoints,
    List<InstanceRefreshDesiredConfigurationContainer>? desiredConfigurationContainers,
    String? desiredConfigurationImageId,
    String? desiredConfigurationLaunchTemplateId,
    List<InstanceRefreshDesiredConfigurationLaunchTemplateOverride>? desiredConfigurationLaunchTemplateOverrides,
    String? desiredConfigurationLaunchTemplateVersion,
    int? maxHealthyPercentage,
    int? minHealthyPercentage,
    required String scalingGroupId,
    bool? skipMatching,
    String? status,
  }) :
      checkpointPauseTime = pulumi.Input.asOptionalInput<int>(checkpointPauseTime),
      checkpoints = pulumi.Input.asOptionalInput<List<InstanceRefreshCheckpoint>>(checkpoints),
      desiredConfigurationContainers = pulumi.Input.asOptionalInput<List<InstanceRefreshDesiredConfigurationContainer>>(desiredConfigurationContainers),
      desiredConfigurationImageId = pulumi.Input.asOptionalInput<String>(desiredConfigurationImageId),
      desiredConfigurationLaunchTemplateId = pulumi.Input.asOptionalInput<String>(desiredConfigurationLaunchTemplateId),
      desiredConfigurationLaunchTemplateOverrides = pulumi.Input.asOptionalInput<List<InstanceRefreshDesiredConfigurationLaunchTemplateOverride>>(desiredConfigurationLaunchTemplateOverrides),
      desiredConfigurationLaunchTemplateVersion = pulumi.Input.asOptionalInput<String>(desiredConfigurationLaunchTemplateVersion),
      maxHealthyPercentage = pulumi.Input.asOptionalInput<int>(maxHealthyPercentage),
      minHealthyPercentage = pulumi.Input.asOptionalInput<int>(minHealthyPercentage),
      scalingGroupId = pulumi.Input.asInput<String>(scalingGroupId),
      skipMatching = pulumi.Input.asOptionalInput<bool>(skipMatching),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpointPauseTime': ?checkpointPauseTime,
      'checkpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceRefreshCheckpoint>, List<Map<String, dynamic>>>(checkpoints, (value) => pulumi.Input.encodeList<InstanceRefreshCheckpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredConfigurationContainers': ?pulumi.Input.mapOptionalInputValue<List<InstanceRefreshDesiredConfigurationContainer>, List<Map<String, dynamic>>>(desiredConfigurationContainers, (value) => pulumi.Input.encodeList<InstanceRefreshDesiredConfigurationContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredConfigurationImageId': ?desiredConfigurationImageId,
      'desiredConfigurationLaunchTemplateId': ?desiredConfigurationLaunchTemplateId,
      'desiredConfigurationLaunchTemplateOverrides': ?pulumi.Input.mapOptionalInputValue<List<InstanceRefreshDesiredConfigurationLaunchTemplateOverride>, List<Map<String, dynamic>>>(desiredConfigurationLaunchTemplateOverrides, (value) => pulumi.Input.encodeList<InstanceRefreshDesiredConfigurationLaunchTemplateOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredConfigurationLaunchTemplateVersion': ?desiredConfigurationLaunchTemplateVersion,
      'maxHealthyPercentage': ?maxHealthyPercentage,
      'minHealthyPercentage': ?minHealthyPercentage,
      'scalingGroupId': scalingGroupId,
      'skipMatching': ?skipMatching,
      'status': ?status,
    };
  }

  factory InstanceRefreshArgs.fromMap(Map<String, dynamic> map) {
    return InstanceRefreshArgs(
      checkpointPauseTime: map['checkpointPauseTime'] == null ? null : map['checkpointPauseTime'] as int,
      checkpoints: map['checkpoints'] == null ? null : pulumi.Input.decodeList<InstanceRefreshCheckpoint>(map['checkpoints'], (value) => InstanceRefreshCheckpoint.fromMap((value as Map).cast<String, dynamic>())),
      desiredConfigurationContainers: map['desiredConfigurationContainers'] == null ? null : pulumi.Input.decodeList<InstanceRefreshDesiredConfigurationContainer>(map['desiredConfigurationContainers'], (value) => InstanceRefreshDesiredConfigurationContainer.fromMap((value as Map).cast<String, dynamic>())),
      desiredConfigurationImageId: map['desiredConfigurationImageId'] == null ? null : map['desiredConfigurationImageId'] as String,
      desiredConfigurationLaunchTemplateId: map['desiredConfigurationLaunchTemplateId'] == null ? null : map['desiredConfigurationLaunchTemplateId'] as String,
      desiredConfigurationLaunchTemplateOverrides: map['desiredConfigurationLaunchTemplateOverrides'] == null ? null : pulumi.Input.decodeList<InstanceRefreshDesiredConfigurationLaunchTemplateOverride>(map['desiredConfigurationLaunchTemplateOverrides'], (value) => InstanceRefreshDesiredConfigurationLaunchTemplateOverride.fromMap((value as Map).cast<String, dynamic>())),
      desiredConfigurationLaunchTemplateVersion: map['desiredConfigurationLaunchTemplateVersion'] == null ? null : map['desiredConfigurationLaunchTemplateVersion'] as String,
      maxHealthyPercentage: map['maxHealthyPercentage'] == null ? null : map['maxHealthyPercentage'] as int,
      minHealthyPercentage: map['minHealthyPercentage'] == null ? null : map['minHealthyPercentage'] as int,
      scalingGroupId: map['scalingGroupId'] as String,
      skipMatching: map['skipMatching'] == null ? null : map['skipMatching'] as bool,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

