// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_action_parameter.dart';
import 'experiment_template_action_target.dart';

class ExperimentTemplateAction {
  /// ID of the action. To find out what actions are supported see [AWS FIS actions reference](https://docs.aws.amazon.com/fis/latest/userguide/fis-actions-reference.html).
  final pulumi.Input<String> actionId;
  /// Description of the action.
  final pulumi.Input<String>? description;
  /// Friendly name of the action.
  final pulumi.Input<String> name;
  /// Parameter(s) for the action, if applicable. See below.
  final pulumi.Input<List<ExperimentTemplateActionParameter>>? parameters;
  /// Set of action names that must complete before this action can be executed.
  final pulumi.Input<List<String>>? startAfters;
  /// Action's target, if applicable. See below.
  final pulumi.Input<ExperimentTemplateActionTarget>? target;

  /// Creates a new [ExperimentTemplateAction].
  /// [actionId] ID of the action. To find out what actions are supported see [AWS FIS actions reference](https://docs.aws.amazon.com/fis/latest/userguide/fis-actions-reference.html).
  /// [description] Description of the action.
  /// [name] Friendly name of the action.
  /// [parameters] Parameter(s) for the action, if applicable. See below.
  /// [startAfters] Set of action names that must complete before this action can be executed.
  /// [target] Action's target, if applicable. See below.
  ExperimentTemplateAction({
    required this.actionId,
    this.description,
    required this.name,
    this.parameters,
    this.startAfters,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionId': actionId,
      'description': ?description,
      'name': name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ExperimentTemplateActionParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ExperimentTemplateActionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startAfters': ?startAfters,
      'target': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateActionTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ExperimentTemplateAction.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateAction(
      actionId: (map['actionId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ExperimentTemplateActionParameter>(map['parameters'], (value) => ExperimentTemplateActionParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startAfters: map['startAfters'] == null ? null : ((map['startAfters'] as List).cast<String>()).input(),
      target: map['target'] == null ? null : (ExperimentTemplateActionTarget.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

