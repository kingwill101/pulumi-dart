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
      deletionProtection: (map['deletionProtection'] as String).input(),
      description: (map['description'] as String).input(),
      disableRollback: (map['disableRollback'] as bool).input(),
      driftDetectionTime: (map['driftDetectionTime'] as String).input(),
      id: (map['id'] as String).input(),
      parameters: (pulumi.Input.decodeList<GetStacksStackParameter>(map['parameters'], (value) => GetStacksStackParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parentStackId: (map['parentStackId'] as String).input(),
      ramRoleName: (map['ramRoleName'] as String).input(),
      rootStackId: (map['rootStackId'] as String).input(),
      stackDriftStatus: (map['stackDriftStatus'] as String).input(),
      stackId: (map['stackId'] as String).input(),
      stackName: (map['stackName'] as String).input(),
      stackPolicyBody: (map['stackPolicyBody'] as String).input(),
      status: (map['status'] as String).input(),
      statusReason: (map['statusReason'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      templateDescription: (map['templateDescription'] as String).input(),
      timeoutInMinutes: (map['timeoutInMinutes'] as int).input(),
    );
  }
}

