// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_execution_action_target_details_properties_response.dart';

/// Model that represents the an action and its status.
class ActionStatusResponse {
  /// The id of the action status.
  final pulumi.Input<String> actionId;
  /// The name of the action status.
  final pulumi.Input<String> actionName;
  /// String that represents the end time of the action.
  final pulumi.Input<String> endTime;
  /// String that represents the start time of the action.
  final pulumi.Input<String> startTime;
  /// The status of the action.
  final pulumi.Input<String> status;
  /// The array of targets.
  final pulumi.Input<List<ExperimentExecutionActionTargetDetailsPropertiesResponse>> targets;

  /// Creates a new [ActionStatusResponse].
  /// [actionId] The id of the action status.
  /// [actionName] The name of the action status.
  /// [endTime] String that represents the end time of the action.
  /// [startTime] String that represents the start time of the action.
  /// [status] The status of the action.
  /// [targets] The array of targets.
  ActionStatusResponse({
    required this.actionId,
    required this.actionName,
    required this.endTime,
    required this.startTime,
    required this.status,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionId': actionId,
      'actionName': actionName,
      'endTime': endTime,
      'startTime': startTime,
      'status': status,
      'targets': pulumi.Input.mapInputValue<List<ExperimentExecutionActionTargetDetailsPropertiesResponse>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<ExperimentExecutionActionTargetDetailsPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ActionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ActionStatusResponse(
      actionId: (map['actionId'] as String).input(),
      actionName: (map['actionName'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
      targets: (pulumi.Input.decodeList<ExperimentExecutionActionTargetDetailsPropertiesResponse>(map['targets'], (value) => ExperimentExecutionActionTargetDetailsPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

