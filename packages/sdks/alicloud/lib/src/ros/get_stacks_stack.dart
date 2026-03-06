// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stacks_stack_parameter.dart';

class GetStacksStack {
  /// Specifies whether to enable deletion protection on the stack.
  final pulumi.Input<String> deletionProtection;
  /// The Description of the Stack.
  final pulumi.Input<String> description;
  /// Specifies whether to disable rollback on stack creation failure..
  final pulumi.Input<bool> disableRollback;
  /// Drift DetectionTime.
  final pulumi.Input<String> driftDetectionTime;
  /// The ID of the Stack.
  final pulumi.Input<String> id;
  /// The parameters.
  final pulumi.Input<List<GetStacksStackParameter>> parameters;
  /// Parent Stack Id.
  final pulumi.Input<String> parentStackId;
  /// The RamRoleName.
  final pulumi.Input<String> ramRoleName;
  /// Root Stack Id.
  final pulumi.Input<String> rootStackId;
  /// Stack DriftStatus.
  final pulumi.Input<String> stackDriftStatus;
  /// Stack Id.
  final pulumi.Input<String> stackId;
  /// Stack Name.
  final pulumi.Input<String> stackName;
  /// The structure that contains the stack policy body.
  final pulumi.Input<String> stackPolicyBody;
  /// The status of Stack. Valid Values: `CREATE_COMPLETE`, `CREATE_FAILED`, `CREATE_IN_PROGRESS`, `DELETE_COMPLETE`, `DELETE_FAILED`, `DELETE_IN_PROGRESS`, `ROLLBACK_COMPLETE`, `ROLLBACK_FAILED`, `ROLLBACK_IN_PROGRESS`.
  final pulumi.Input<String> status;
  /// Status Reason.
  final pulumi.Input<String> statusReason;
  /// Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  final pulumi.Input<Map<String, String>> tags;
  /// Template Description.
  final pulumi.Input<String> templateDescription;
  /// Specifies whether to use the values that were passed last time for the parameters that you do not specify in the current request.
  final pulumi.Input<int> timeoutInMinutes;

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
  const GetStacksStack({
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
      'parameters': pulumi.Input.mapInputValue<List<GetStacksStackParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GetStacksStackParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      deletionProtection: pulumi.Input.fromValue(map['deletionProtection'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      disableRollback: pulumi.Input.fromValue(map['disableRollback'] as bool),
      driftDetectionTime: pulumi.Input.fromValue(map['driftDetectionTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetStacksStackParameter>(map['parameters']!, (value) => GetStacksStackParameter.fromMap((value as Map).cast<String, dynamic>()))),
      parentStackId: pulumi.Input.fromValue(map['parentStackId'] as String),
      ramRoleName: pulumi.Input.fromValue(map['ramRoleName'] as String),
      rootStackId: pulumi.Input.fromValue(map['rootStackId'] as String),
      stackDriftStatus: pulumi.Input.fromValue(map['stackDriftStatus'] as String),
      stackId: pulumi.Input.fromValue(map['stackId'] as String),
      stackName: pulumi.Input.fromValue(map['stackName'] as String),
      stackPolicyBody: pulumi.Input.fromValue(map['stackPolicyBody'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusReason: pulumi.Input.fromValue(map['statusReason'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      templateDescription: pulumi.Input.fromValue(map['templateDescription'] as String),
      timeoutInMinutes: pulumi.Input.fromValue(map['timeoutInMinutes'] as int),
    );
  }
}

