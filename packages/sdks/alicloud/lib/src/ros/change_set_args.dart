// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_set_parameter.dart';

/// {@template pulumi_ros_change_set_change_set_args_doc}
/// The set of arguments for ChangeSet.
/// {@endtemplate}
/// {@macro pulumi_ros_change_set_change_set_args_doc}
class ChangeSetArgs {
  /// The name of the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final pulumi.Input<String> changeSetName;

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

  /// The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You can specify one of TemplateBody or TemplateURL parameters, but you cannot specify both of them.
  final pulumi.Input<String>? templateBody;

  /// The template url.
  final pulumi.Input<String>? templateUrl;

  /// Timeout In Minutes.
  final pulumi.Input<int>? timeoutInMinutes;

  /// The use previous parameters.
  final pulumi.Input<bool>? usePreviousParameters;

  /// Creates a new [ChangeSetArgs].
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
  /// [templateBody] The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You can specify one of TemplateBody or TemplateURL parameters, but you cannot specify both of them.
  /// [templateUrl] The template url.
  /// [timeoutInMinutes] Timeout In Minutes.
  /// [usePreviousParameters] The use previous parameters.
  ChangeSetArgs({
    required this.changeSetName,
    this.changeSetType,
    this.description,
    this.disableRollback,
    this.notificationUrls,
    this.parameters,
    this.ramRoleName,
    this.replacementOption,
    this.stackId,
    this.stackName,
    this.stackPolicyBody,
    this.stackPolicyDuringUpdateBody,
    this.stackPolicyDuringUpdateUrl,
    this.stackPolicyUrl,
    this.templateBody,
    this.templateUrl,
    this.timeoutInMinutes,
    this.usePreviousParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeSetName': changeSetName,
      'changeSetType': ?changeSetType,
      'description': ?description,
      'disableRollback': ?disableRollback,
      'notificationUrls': ?notificationUrls,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ChangeSetParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  ChangeSetParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ramRoleName': ?ramRoleName,
      'replacementOption': ?replacementOption,
      'stackId': ?stackId,
      'stackName': ?stackName,
      'stackPolicyBody': ?stackPolicyBody,
      'stackPolicyDuringUpdateBody': ?stackPolicyDuringUpdateBody,
      'stackPolicyDuringUpdateUrl': ?stackPolicyDuringUpdateUrl,
      'stackPolicyUrl': ?stackPolicyUrl,
      'templateBody': ?templateBody,
      'templateUrl': ?templateUrl,
      'timeoutInMinutes': ?timeoutInMinutes,
      'usePreviousParameters': ?usePreviousParameters,
    };
  }

  factory ChangeSetArgs.fromMap(Map<String, dynamic> map) {
    return ChangeSetArgs(
      changeSetName: pulumi.Input.fromValue(map['changeSetName'] as String),
      changeSetType: (() {
        final guardedValue = map['changeSetType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableRollback: (() {
        final guardedValue = map['disableRollback'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      notificationUrls: (() {
        final guardedValue = map['notificationUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ChangeSetParameter>(
            guardedValue,
            (value) => ChangeSetParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ramRoleName: (() {
        final guardedValue = map['ramRoleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replacementOption: (() {
        final guardedValue = map['replacementOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackId: (() {
        final guardedValue = map['stackId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackName: (() {
        final guardedValue = map['stackName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackPolicyBody: (() {
        final guardedValue = map['stackPolicyBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackPolicyDuringUpdateBody: (() {
        final guardedValue = map['stackPolicyDuringUpdateBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackPolicyDuringUpdateUrl: (() {
        final guardedValue = map['stackPolicyDuringUpdateUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackPolicyUrl: (() {
        final guardedValue = map['stackPolicyUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateBody: (() {
        final guardedValue = map['templateBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateUrl: (() {
        final guardedValue = map['templateUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeoutInMinutes: (() {
        final guardedValue = map['timeoutInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      usePreviousParameters: (() {
        final guardedValue = map['usePreviousParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
