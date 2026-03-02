// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'step.dart';

/// {@template pulumi_azurestackhci_update_run_args_doc}
/// The set of arguments for UpdateRun.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_update_run_args_doc}
class UpdateRunArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// More detailed description of the step.
  final pulumi.Input<String>? description;
  /// Duration of the update run.
  final pulumi.Input<String>? duration;
  /// When the step reached a terminal state.
  final pulumi.Input<String>? endTimeUtc;
  /// Error message, specified if the step is in a failed state.
  final pulumi.Input<String>? errorMessage;
  /// Expected execution time of a given step. This is optionally authored in the update action plan and can be empty.
  final pulumi.Input<String>? expectedExecutionTime;
  /// Timestamp of the most recently completed step in the update run.
  final pulumi.Input<String>? lastUpdatedTime;
  /// Completion time of this step or the last completed sub-step.
  final pulumi.Input<String>? lastUpdatedTimeUtc;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the step.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// When the step started, or empty if it has not started executing.
  final pulumi.Input<String>? startTimeUtc;
  /// State of the update run.
  final pulumi.Input<String>? state;
  /// Status of the step, bubbled up from the ECE action plan for installation attempts. Values are: 'Success', 'Error', 'InProgress', and 'Unknown status'.
  final pulumi.Input<String>? status;
  /// Recursive model for child steps of this step.
  final pulumi.Input<List<Step>>? steps;
  /// Timestamp of the update run was started.
  final pulumi.Input<String>? timeStarted;
  /// The name of the Update
  final pulumi.Input<String> updateName;
  /// The name of the Update Run
  final pulumi.Input<String>? updateRunName;

  /// Creates a new [UpdateRunArgs].
  /// [clusterName] The name of the cluster.
  /// [description] More detailed description of the step.
  /// [duration] Duration of the update run.
  /// [endTimeUtc] When the step reached a terminal state.
  /// [errorMessage] Error message, specified if the step is in a failed state.
  /// [expectedExecutionTime] Expected execution time of a given step. This is optionally authored in the update action plan and can be empty.
  /// [lastUpdatedTime] Timestamp of the most recently completed step in the update run.
  /// [lastUpdatedTimeUtc] Completion time of this step or the last completed sub-step.
  /// [location] The geo-location where the resource lives
  /// [name] Name of the step.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [startTimeUtc] When the step started, or empty if it has not started executing.
  /// [state] State of the update run.
  /// [status] Status of the step, bubbled up from the ECE action plan for installation attempts. Values are: 'Success', 'Error', 'InProgress', and 'Unknown status'.
  /// [steps] Recursive model for child steps of this step.
  /// [timeStarted] Timestamp of the update run was started.
  /// [updateName] The name of the Update
  /// [updateRunName] The name of the Update Run
  UpdateRunArgs({
    required this.clusterName,
    this.description,
    this.duration,
    this.endTimeUtc,
    this.errorMessage,
    this.expectedExecutionTime,
    this.lastUpdatedTime,
    this.lastUpdatedTimeUtc,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.startTimeUtc,
    this.state,
    this.status,
    this.steps,
    this.timeStarted,
    required this.updateName,
    this.updateRunName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'description': ?description,
      'duration': ?duration,
      'endTimeUtc': ?endTimeUtc,
      'errorMessage': ?errorMessage,
      'expectedExecutionTime': ?expectedExecutionTime,
      'lastUpdatedTime': ?lastUpdatedTime,
      'lastUpdatedTimeUtc': ?lastUpdatedTimeUtc,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'startTimeUtc': ?startTimeUtc,
      'state': ?state,
      'status': ?status,
      'steps': ?pulumi.Input.mapOptionalInputValue<List<Step>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<Step, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeStarted': ?timeStarted,
      'updateName': updateName,
      'updateRunName': ?updateRunName,
    };
  }

  factory UpdateRunArgs.fromMap(Map<String, dynamic> map) {
    return UpdateRunArgs(
      clusterName: (map['clusterName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      duration: map['duration'] == null ? null : (map['duration'] as String).input(),
      endTimeUtc: map['endTimeUtc'] == null ? null : (map['endTimeUtc'] as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      expectedExecutionTime: map['expectedExecutionTime'] == null ? null : (map['expectedExecutionTime'] as String).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : (map['lastUpdatedTime'] as String).input(),
      lastUpdatedTimeUtc: map['lastUpdatedTimeUtc'] == null ? null : (map['lastUpdatedTimeUtc'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      startTimeUtc: map['startTimeUtc'] == null ? null : (map['startTimeUtc'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      steps: map['steps'] == null ? null : (pulumi.Input.decodeList<Step>(map['steps'], (value) => Step.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeStarted: map['timeStarted'] == null ? null : (map['timeStarted'] as String).input(),
      updateName: (map['updateName'] as String).input(),
      updateRunName: map['updateRunName'] == null ? null : (map['updateRunName'] as String).input(),
    );
  }
}

