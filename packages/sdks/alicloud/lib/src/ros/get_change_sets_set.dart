// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_change_sets_set_parameter.dart';

class GetChangeSetsSet {
  /// The ID of the change set.
  final pulumi.Input<String> changeSetId;
  /// The name of the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final pulumi.Input<String> changeSetName;
  /// The type of the change set. Valid values:  CREATE: creates a change set for a new stack. UPDATE: creates a change set for an existing stack. IMPORT: creates a change set for a new stack or an existing stack to import non-ROS-managed resources. If you create a change set for a new stack, ROS creates a stack that has a unique stack ID. The stack is in the REVIEW_IN_PROGRESS state until you execute the change set.  You cannot use the UPDATE type to create a change set for a new stack or the CREATE type to create a change set for an existing stack.
  final pulumi.Input<String> changeSetType;
  /// The description of the change set. The description can be up to 1,024 bytes in length.
  final pulumi.Input<String> description;
  /// Specifies whether to disable rollback on stack creation failure. Default value: false.  Valid values:  true: disables rollback on stack creation failure. false: enables rollback on stack creation failure. Note This parameter takes effect only when ChangeSetType is set to CREATE or IMPORT.
  final pulumi.Input<bool> disableRollback;
  /// The execution status of change set N. Maximum value of N: 5. Valid values:  UNAVAILABLE AVAILABLE EXECUTE_IN_PROGRESS EXECUTE_COMPLETE EXECUTE_FAILED OBSOLETE.
  final pulumi.Input<String> executionStatus;
  /// The ID of the Change Set.
  final pulumi.Input<String> id;
  /// Parameters.
  final pulumi.Input<List<GetChangeSetsSetParameter>> parameters;
  /// The ID of the stack for which you want to create the change set. ROS generates the change set by comparing the stack information with the information that you submit, such as a modified template or different inputs.
  final pulumi.Input<String> stackId;
  /// The name of the stack for which you want to create the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.  Note This parameter takes effect only when ChangeSetType is set to CREATE or IMPORT.
  final pulumi.Input<String> stackName;
  /// The status of the change set.
  final pulumi.Input<String> status;
  /// The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You can specify one of TemplateBody or TemplateURL parameters, but you cannot specify both of them.
  final pulumi.Input<String> templateBody;
  /// Timeout In Minutes.
  final pulumi.Input<int> timeoutInMinutes;

  /// Creates a new [GetChangeSetsSet].
  /// [changeSetId] The ID of the change set.
  /// [changeSetName] The name of the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  /// [changeSetType] The type of the change set. Valid values:  CREATE: creates a change set for a new stack. UPDATE: creates a change set for an existing stack. IMPORT: creates a change set for a new stack or an existing stack to import non-ROS-managed resources. If you create a change set for a new stack, ROS creates a stack that has a unique stack ID. The stack is in the REVIEW_IN_PROGRESS state until you execute the change set.  You cannot use the UPDATE type to create a change set for a new stack or the CREATE type to create a change set for an existing stack.
  /// [description] The description of the change set. The description can be up to 1,024 bytes in length.
  /// [disableRollback] Specifies whether to disable rollback on stack creation failure. Default value: false.  Valid values:  true: disables rollback on stack creation failure. false: enables rollback on stack creation failure. Note This parameter takes effect only when ChangeSetType is set to CREATE or IMPORT.
  /// [executionStatus] The execution status of change set N. Maximum value of N: 5. Valid values:  UNAVAILABLE AVAILABLE EXECUTE_IN_PROGRESS EXECUTE_COMPLETE EXECUTE_FAILED OBSOLETE.
  /// [id] The ID of the Change Set.
  /// [parameters] Parameters.
  /// [stackId] The ID of the stack for which you want to create the change set. ROS generates the change set by comparing the stack information with the information that you submit, such as a modified template or different inputs.
  /// [stackName] The name of the stack for which you want to create the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.  Note This parameter takes effect only when ChangeSetType is set to CREATE or IMPORT.
  /// [status] The status of the change set.
  /// [templateBody] The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You can specify one of TemplateBody or TemplateURL parameters, but you cannot specify both of them.
  /// [timeoutInMinutes] Timeout In Minutes.
  GetChangeSetsSet({
    required this.changeSetId,
    required this.changeSetName,
    required this.changeSetType,
    required this.description,
    required this.disableRollback,
    required this.executionStatus,
    required this.id,
    required this.parameters,
    required this.stackId,
    required this.stackName,
    required this.status,
    required this.templateBody,
    required this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeSetId': changeSetId,
      'changeSetName': changeSetName,
      'changeSetType': changeSetType,
      'description': description,
      'disableRollback': disableRollback,
      'executionStatus': executionStatus,
      'id': id,
      'parameters': pulumi.Input.mapInputValue<List<GetChangeSetsSetParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GetChangeSetsSetParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackId': stackId,
      'stackName': stackName,
      'status': status,
      'templateBody': templateBody,
      'timeoutInMinutes': timeoutInMinutes,
    };
  }

  factory GetChangeSetsSet.fromMap(Map<String, dynamic> map) {
    return GetChangeSetsSet(
      changeSetId: (map['changeSetId'] as String).input(),
      changeSetName: (map['changeSetName'] as String).input(),
      changeSetType: (map['changeSetType'] as String).input(),
      description: (map['description'] as String).input(),
      disableRollback: (map['disableRollback'] as bool).input(),
      executionStatus: (map['executionStatus'] as String).input(),
      id: (map['id'] as String).input(),
      parameters: (pulumi.Input.decodeList<GetChangeSetsSetParameter>(map['parameters'], (value) => GetChangeSetsSetParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stackId: (map['stackId'] as String).input(),
      stackName: (map['stackName'] as String).input(),
      status: (map['status'] as String).input(),
      templateBody: (map['templateBody'] as String).input(),
      timeoutInMinutes: (map['timeoutInMinutes'] as int).input(),
    );
  }
}

