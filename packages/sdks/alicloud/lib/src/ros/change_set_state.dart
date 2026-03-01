// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_set_parameter.dart';

/// Input properties used for looking up and filtering ChangeSet resources.
class ChangeSetState {
  /// The name of the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final pulumi.Input<String>? changeSetName;
  /// The type of the change set. Valid values:  CREATE: creates a change set for a new stack. UPDATE: creates a change set for an existing stack. IMPORT: creates a change set for a new stack or an existing stack to import non-ROS-managed resources. If you create a change set for a new stack, ROS creates a stack that has a unique stack ID. The stack is in the REVIEW_IN_PROGRESS state until you execute the change set.  You cannot use the UPDATE type to create a change set for a new stack or the CREATE type to create a change set for an existing stack.
  final pulumi.Input<String>? changeSetType;
  /// The description of the change set. The description can be up to 1,024 bytes in length.
  final pulumi.Input<String>? description;
  /// Specifies whether to disable rollback on stack creation failure. Default value: false.  Valid values:  true: disables rollback on stack creation failure. false: enables rollback on stack creation failure. Note This parameter takes effect only when ChangeSetType is set to CREATE or IMPORT.
  final pulumi.Input<bool>? disableRollback;
  /// The notification urls.
  final pulumi.Input<List<String>>? notificationUrls;
  /// Parameters.
  final pulumi.Input<List<ChangeSetParameter>>? parameters;
  /// The ram role name.
  final pulumi.Input<String>? ramRoleName;
  /// The replacement option.
  final pulumi.Input<String>? replacementOption;
  /// The ID of the stack for which you want to create the change set. ROS generates the change set by comparing the stack information with the information that you submit, such as a modified template or different inputs.
  final pulumi.Input<String>? stackId;
  /// The name of the stack for which you want to create the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.  Note This parameter takes effect only when ChangeSetType is set to CREATE or IMPORT.
  final pulumi.Input<String>? stackName;
  /// The stack policy body.
  final pulumi.Input<String>? stackPolicyBody;
  /// The stack policy during update body.
  final pulumi.Input<String>? stackPolicyDuringUpdateBody;
  /// The stack policy during update url.
  final pulumi.Input<String>? stackPolicyDuringUpdateUrl;
  /// The stack policy url.
  final pulumi.Input<String>? stackPolicyUrl;
  /// The status of the change set.
  final pulumi.Input<String>? status;
  /// The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You can specify one of TemplateBody or TemplateURL parameters, but you cannot specify both of them.
  final pulumi.Input<String>? templateBody;
  /// The template url.
  final pulumi.Input<String>? templateUrl;
  /// Timeout In Minutes.
  final pulumi.Input<int>? timeoutInMinutes;
  /// The use previous parameters.
  final pulumi.Input<bool>? usePreviousParameters;

  /// Creates a new [ChangeSetState].
  /// [changeSetName] The name of the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  /// [changeSetType] The type of the change set. Valid values:  CREATE: creates a change set for a new stack. UPDATE: creates a change set for an existing stack. IMPORT: creates a change set for a new stack or an existing stack to import non-ROS-managed resources. If you create a change set for a new stack, ROS creates a stack that has a unique stack ID. The stack is in the REVIEW_IN_PROGRESS state until you execute the change set.  You cannot use the UPDATE type to create a change set for a new stack or the CREATE type to create a change set for an existing stack.
  /// [description] The description of the change set. The description can be up to 1,024 bytes in length.
  /// [disableRollback] Specifies whether to disable rollback on stack creation failure. Default value: false.  Valid values:  true: disables rollback on stack creation failure. false: enables rollback on stack creation failure. Note This parameter takes effect only when ChangeSetType is set to CREATE or IMPORT.
  /// [notificationUrls] The notification urls.
  /// [parameters] Parameters.
  /// [ramRoleName] The ram role name.
  /// [replacementOption] The replacement option.
  /// [stackId] The ID of the stack for which you want to create the change set. ROS generates the change set by comparing the stack information with the information that you submit, such as a modified template or different inputs.
  /// [stackName] The name of the stack for which you want to create the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.  Note This parameter takes effect only when ChangeSetType is set to CREATE or IMPORT.
  /// [stackPolicyBody] The stack policy body.
  /// [stackPolicyDuringUpdateBody] The stack policy during update body.
  /// [stackPolicyDuringUpdateUrl] The stack policy during update url.
  /// [stackPolicyUrl] The stack policy url.
  /// [status] The status of the change set.
  /// [templateBody] The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You can specify one of TemplateBody or TemplateURL parameters, but you cannot specify both of them.
  /// [templateUrl] The template url.
  /// [timeoutInMinutes] Timeout In Minutes.
  /// [usePreviousParameters] The use previous parameters.
  ChangeSetState({
    pulumi.Output<String>? changeSetName,
    pulumi.Output<String>? changeSetType,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disableRollback,
    pulumi.Output<List<String>>? notificationUrls,
    pulumi.Output<List<ChangeSetParameter>>? parameters,
    pulumi.Output<String>? ramRoleName,
    pulumi.Output<String>? replacementOption,
    pulumi.Output<String>? stackId,
    pulumi.Output<String>? stackName,
    pulumi.Output<String>? stackPolicyBody,
    pulumi.Output<String>? stackPolicyDuringUpdateBody,
    pulumi.Output<String>? stackPolicyDuringUpdateUrl,
    pulumi.Output<String>? stackPolicyUrl,
    pulumi.Output<String>? status,
    pulumi.Output<String>? templateBody,
    pulumi.Output<String>? templateUrl,
    pulumi.Output<int>? timeoutInMinutes,
    pulumi.Output<bool>? usePreviousParameters,
  }) :
      changeSetName = pulumi.Input.asOptionalInput<String>(changeSetName),
      changeSetType = pulumi.Input.asOptionalInput<String>(changeSetType),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableRollback = pulumi.Input.asOptionalInput<bool>(disableRollback),
      notificationUrls = pulumi.Input.asOptionalInput<List<String>>(notificationUrls),
      parameters = pulumi.Input.asOptionalInput<List<ChangeSetParameter>>(parameters),
      ramRoleName = pulumi.Input.asOptionalInput<String>(ramRoleName),
      replacementOption = pulumi.Input.asOptionalInput<String>(replacementOption),
      stackId = pulumi.Input.asOptionalInput<String>(stackId),
      stackName = pulumi.Input.asOptionalInput<String>(stackName),
      stackPolicyBody = pulumi.Input.asOptionalInput<String>(stackPolicyBody),
      stackPolicyDuringUpdateBody = pulumi.Input.asOptionalInput<String>(stackPolicyDuringUpdateBody),
      stackPolicyDuringUpdateUrl = pulumi.Input.asOptionalInput<String>(stackPolicyDuringUpdateUrl),
      stackPolicyUrl = pulumi.Input.asOptionalInput<String>(stackPolicyUrl),
      status = pulumi.Input.asOptionalInput<String>(status),
      templateBody = pulumi.Input.asOptionalInput<String>(templateBody),
      templateUrl = pulumi.Input.asOptionalInput<String>(templateUrl),
      timeoutInMinutes = pulumi.Input.asOptionalInput<int>(timeoutInMinutes),
      usePreviousParameters = pulumi.Input.asOptionalInput<bool>(usePreviousParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeSetName': ?changeSetName,
      'changeSetType': ?changeSetType,
      'description': ?description,
      'disableRollback': ?disableRollback,
      'notificationUrls': ?notificationUrls,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ChangeSetParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ChangeSetParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ramRoleName': ?ramRoleName,
      'replacementOption': ?replacementOption,
      'stackId': ?stackId,
      'stackName': ?stackName,
      'stackPolicyBody': ?stackPolicyBody,
      'stackPolicyDuringUpdateBody': ?stackPolicyDuringUpdateBody,
      'stackPolicyDuringUpdateUrl': ?stackPolicyDuringUpdateUrl,
      'stackPolicyUrl': ?stackPolicyUrl,
      'status': ?status,
      'templateBody': ?templateBody,
      'templateUrl': ?templateUrl,
      'timeoutInMinutes': ?timeoutInMinutes,
      'usePreviousParameters': ?usePreviousParameters,
    };
  }

  factory ChangeSetState.fromMap(Map<String, dynamic> map) {
    return ChangeSetState(
      changeSetName: map['changeSetName'] == null ? null : pulumi.Output.create<String>(map['changeSetName'] as String),
      changeSetType: map['changeSetType'] == null ? null : pulumi.Output.create<String>(map['changeSetType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableRollback: map['disableRollback'] == null ? null : pulumi.Output.create<bool>(map['disableRollback'] as bool),
      notificationUrls: map['notificationUrls'] == null ? null : pulumi.Output.create<List<String>>((map['notificationUrls'] as List).cast<String>()),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<ChangeSetParameter>>(pulumi.Input.decodeList<ChangeSetParameter>(map['parameters'], (value) => ChangeSetParameter.fromMap((value as Map).cast<String, dynamic>()))),
      ramRoleName: map['ramRoleName'] == null ? null : pulumi.Output.create<String>(map['ramRoleName'] as String),
      replacementOption: map['replacementOption'] == null ? null : pulumi.Output.create<String>(map['replacementOption'] as String),
      stackId: map['stackId'] == null ? null : pulumi.Output.create<String>(map['stackId'] as String),
      stackName: map['stackName'] == null ? null : pulumi.Output.create<String>(map['stackName'] as String),
      stackPolicyBody: map['stackPolicyBody'] == null ? null : pulumi.Output.create<String>(map['stackPolicyBody'] as String),
      stackPolicyDuringUpdateBody: map['stackPolicyDuringUpdateBody'] == null ? null : pulumi.Output.create<String>(map['stackPolicyDuringUpdateBody'] as String),
      stackPolicyDuringUpdateUrl: map['stackPolicyDuringUpdateUrl'] == null ? null : pulumi.Output.create<String>(map['stackPolicyDuringUpdateUrl'] as String),
      stackPolicyUrl: map['stackPolicyUrl'] == null ? null : pulumi.Output.create<String>(map['stackPolicyUrl'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      templateBody: map['templateBody'] == null ? null : pulumi.Output.create<String>(map['templateBody'] as String),
      templateUrl: map['templateUrl'] == null ? null : pulumi.Output.create<String>(map['templateUrl'] as String),
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['timeoutInMinutes'] as int),
      usePreviousParameters: map['usePreviousParameters'] == null ? null : pulumi.Output.create<bool>(map['usePreviousParameters'] as bool),
    );
  }
}

