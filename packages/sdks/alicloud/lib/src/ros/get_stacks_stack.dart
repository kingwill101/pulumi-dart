// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stacks_stack_parameter.dart';

class GetStacksStack {
  /// Specifies whether to enable deletion protection on the stack.
  final String deletionProtection;
  /// The Description of the Stack.
  final String description;
  /// Specifies whether to disable rollback on stack creation failure..
  final bool disableRollback;
  /// Drift DetectionTime.
  final String driftDetectionTime;
  /// The ID of the Stack.
  final String id;
  /// The parameters.
  final List<GetStacksStackParameter> parameters;
  /// Parent Stack Id.
  final String parentStackId;
  /// The RamRoleName.
  final String ramRoleName;
  /// Root Stack Id.
  final String rootStackId;
  /// Stack DriftStatus.
  final String stackDriftStatus;
  /// Stack Id.
  final String stackId;
  /// Stack Name.
  final String stackName;
  /// The structure that contains the stack policy body.
  final String stackPolicyBody;
  /// The status of Stack. Valid Values: `CREATE_COMPLETE`, `CREATE_FAILED`, `CREATE_IN_PROGRESS`, `DELETE_COMPLETE`, `DELETE_FAILED`, `DELETE_IN_PROGRESS`, `ROLLBACK_COMPLETE`, `ROLLBACK_FAILED`, `ROLLBACK_IN_PROGRESS`.
  final String status;
  /// Status Reason.
  final String statusReason;
  /// Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  final Map<String, String> tags;
  /// Template Description.
  final String templateDescription;
  /// Specifies whether to use the values that were passed last time for the parameters that you do not specify in the current request.
  final int timeoutInMinutes;

  /// Creates a new [GetStacksStack].
  /// [deletionProtection] Specifies whether to enable deletion protection on the stack.
  /// [description] The Description of the Stack.
  /// [disableRollback] Specifies whether to disable rollback on stack creation failure..
  /// [driftDetectionTime] Drift DetectionTime.
  /// [id] The ID of the Stack.
  /// [parameters] The parameters.
  /// [parentStackId] Parent Stack Id.
  /// [ramRoleName] The RamRoleName.
  /// [rootStackId] Root Stack Id.
  /// [stackDriftStatus] Stack DriftStatus.
  /// [stackId] Stack Id.
  /// [stackName] Stack Name.
  /// [stackPolicyBody] The structure that contains the stack policy body.
  /// [status] The status of Stack. Valid Values: `CREATE_COMPLETE`, `CREATE_FAILED`, `CREATE_IN_PROGRESS`, `DELETE_COMPLETE`, `DELETE_FAILED`, `DELETE_IN_PROGRESS`, `ROLLBACK_COMPLETE`, `ROLLBACK_FAILED`, `ROLLBACK_IN_PROGRESS`.
  /// [statusReason] Status Reason.
  /// [tags] Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  /// [templateDescription] Template Description.
  /// [timeoutInMinutes] Specifies whether to use the values that were passed last time for the parameters that you do not specify in the current request.
  GetStacksStack({
    required this.deletionProtection,
    required this.description,
    required this.disableRollback,
    required this.driftDetectionTime,
    required this.id,
    required this.parameters,
    required this.parentStackId,
    required this.ramRoleName,
    required this.rootStackId,
    required this.stackDriftStatus,
    required this.stackId,
    required this.stackName,
    required this.stackPolicyBody,
    required this.status,
    required this.statusReason,
    required this.tags,
    required this.templateDescription,
    required this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': deletionProtection,
      'description': description,
      'disableRollback': disableRollback,
      'driftDetectionTime': driftDetectionTime,
      'id': id,
      'parameters': pulumi.Input.encodeList<GetStacksStackParameter, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'parentStackId': parentStackId,
      'ramRoleName': ramRoleName,
      'rootStackId': rootStackId,
      'stackDriftStatus': stackDriftStatus,
      'stackId': stackId,
      'stackName': stackName,
      'stackPolicyBody': stackPolicyBody,
      'status': status,
      'statusReason': statusReason,
      'tags': tags,
      'templateDescription': templateDescription,
      'timeoutInMinutes': timeoutInMinutes,
    };
  }

  factory GetStacksStack.fromMap(Map<String, dynamic> map) {
    return GetStacksStack(
      deletionProtection: map['deletionProtection'] as String,
      description: map['description'] as String,
      disableRollback: map['disableRollback'] as bool,
      driftDetectionTime: map['driftDetectionTime'] as String,
      id: map['id'] as String,
      parameters: pulumi.Input.decodeList<GetStacksStackParameter>(map['parameters'], (value) => GetStacksStackParameter.fromMap((value as Map).cast<String, dynamic>())),
      parentStackId: map['parentStackId'] as String,
      ramRoleName: map['ramRoleName'] as String,
      rootStackId: map['rootStackId'] as String,
      stackDriftStatus: map['stackDriftStatus'] as String,
      stackId: map['stackId'] as String,
      stackName: map['stackName'] as String,
      stackPolicyBody: map['stackPolicyBody'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      templateDescription: map['templateDescription'] as String,
      timeoutInMinutes: map['timeoutInMinutes'] as int,
    );
  }
}

