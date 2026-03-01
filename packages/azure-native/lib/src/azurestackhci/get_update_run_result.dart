// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'step_response.dart';
import 'system_data_response.dart';

/// Result data returned by getUpdateRun.
class GetUpdateRunResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// More detailed description of the step.
  final String? description;
  /// Duration of the update run.
  final String? duration;
  /// When the step reached a terminal state.
  final String? endTimeUtc;
  /// Error message, specified if the step is in a failed state.
  final String? errorMessage;
  /// Expected execution time of a given step. This is optionally authored in the update action plan and can be empty.
  final String? expectedExecutionTime;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Timestamp of the most recently completed step in the update run.
  final String? lastUpdatedTime;
  /// Completion time of this step or the last completed sub-step.
  final String? lastUpdatedTimeUtc;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// Provisioning state of the UpdateRuns proxy resource.
  final String provisioningState;
  /// When the step started, or empty if it has not started executing.
  final String? startTimeUtc;
  /// State of the update run.
  final String? state;
  /// Status of the step, bubbled up from the ECE action plan for installation attempts. Values are: 'Success', 'Error', 'InProgress', and 'Unknown status'.
  final String? status;
  /// Recursive model for child steps of this step.
  final List<StepResponse>? steps;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Timestamp of the update run was started.
  final String? timeStarted;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetUpdateRunResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] More detailed description of the step.
  /// [duration] Duration of the update run.
  /// [endTimeUtc] When the step reached a terminal state.
  /// [errorMessage] Error message, specified if the step is in a failed state.
  /// [expectedExecutionTime] Expected execution time of a given step. This is optionally authored in the update action plan and can be empty.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastUpdatedTime] Timestamp of the most recently completed step in the update run.
  /// [lastUpdatedTimeUtc] Completion time of this step or the last completed sub-step.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the UpdateRuns proxy resource.
  /// [startTimeUtc] When the step started, or empty if it has not started executing.
  /// [state] State of the update run.
  /// [status] Status of the step, bubbled up from the ECE action plan for installation attempts. Values are: 'Success', 'Error', 'InProgress', and 'Unknown status'.
  /// [steps] Recursive model for child steps of this step.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [timeStarted] Timestamp of the update run was started.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetUpdateRunResult({
    required this.azureApiVersion,
    this.description,
    this.duration,
    this.endTimeUtc,
    this.errorMessage,
    this.expectedExecutionTime,
    required this.id,
    this.lastUpdatedTime,
    this.lastUpdatedTimeUtc,
    this.location,
    required this.name,
    required this.provisioningState,
    this.startTimeUtc,
    this.state,
    this.status,
    this.steps,
    required this.systemData,
    this.timeStarted,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'duration': ?duration,
      'endTimeUtc': ?endTimeUtc,
      'errorMessage': ?errorMessage,
      'expectedExecutionTime': ?expectedExecutionTime,
      'id': id,
      'lastUpdatedTime': ?lastUpdatedTime,
      'lastUpdatedTimeUtc': ?lastUpdatedTimeUtc,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'startTimeUtc': ?startTimeUtc,
      'state': ?state,
      'status': ?status,
      'steps': ?steps == null ? null : pulumi.Input.encodeList<StepResponse, Map<String, dynamic>>(steps!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'timeStarted': ?timeStarted,
      'type': type,
    };
  }

  factory GetUpdateRunResult.fromMap(Map<String, dynamic> map) {
    return GetUpdateRunResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      endTimeUtc: map['endTimeUtc'] == null ? null : map['endTimeUtc'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      expectedExecutionTime: map['expectedExecutionTime'] == null ? null : map['expectedExecutionTime'] as String,
      id: map['id'] as String,
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : map['lastUpdatedTime'] as String,
      lastUpdatedTimeUtc: map['lastUpdatedTimeUtc'] == null ? null : map['lastUpdatedTimeUtc'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      startTimeUtc: map['startTimeUtc'] == null ? null : map['startTimeUtc'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      steps: map['steps'] == null ? null : pulumi.Input.decodeList<StepResponse>(map['steps'], (value) => StepResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      timeStarted: map['timeStarted'] == null ? null : map['timeStarted'] as String,
      type: map['type'] as String,
    );
  }
}

