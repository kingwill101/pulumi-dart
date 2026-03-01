// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_execution_action_target_details_properties_response.dart';

/// Model that represents the an action and its status.
class ActionStatusResponse {
  /// The id of the action status.
  final String actionId;
  /// The name of the action status.
  final String actionName;
  /// String that represents the end time of the action.
  final String endTime;
  /// String that represents the start time of the action.
  final String startTime;
  /// The status of the action.
  final String status;
  /// The array of targets.
  final List<ExperimentExecutionActionTargetDetailsPropertiesResponse> targets;

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
      'targets': pulumi.Input.encodeList<ExperimentExecutionActionTargetDetailsPropertiesResponse, Map<String, dynamic>>(targets, (value) => value.toMap()),
    };
  }

  factory ActionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ActionStatusResponse(
      actionId: map['actionId'] as String,
      actionName: map['actionName'] as String,
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      targets: pulumi.Input.decodeList<ExperimentExecutionActionTargetDetailsPropertiesResponse>(map['targets'], (value) => ExperimentExecutionActionTargetDetailsPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

