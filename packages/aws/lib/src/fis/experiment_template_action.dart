// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_action_parameter.dart';
import 'experiment_template_action_target.dart';

class ExperimentTemplateAction {
  /// ID of the action. To find out what actions are supported see [AWS FIS actions reference](https://docs.aws.amazon.com/fis/latest/userguide/fis-actions-reference.html).
  final String actionId;

  /// Description of the action.
  final String? description;

  /// Friendly name of the action.
  final String name;

  /// Parameter(s) for the action, if applicable. See below.
  final List<ExperimentTemplateActionParameter>? parameters;

  /// Set of action names that must complete before this action can be executed.
  final List<String>? startAfters;

  /// Action's target, if applicable. See below.
  final ExperimentTemplateActionTarget? target;

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
      'parameters': ?parameters == null
          ? null
          : pulumi.Input.encodeList<
              ExperimentTemplateActionParameter,
              Map<String, dynamic>
            >(parameters!, (value) => value.toMap()),
      'startAfters': ?startAfters,
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory ExperimentTemplateAction.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateAction(
      actionId: map['actionId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<ExperimentTemplateActionParameter>(
              map['parameters'],
              (value) => ExperimentTemplateActionParameter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      startAfters: map['startAfters'] == null
          ? null
          : (map['startAfters'] as List).cast<String>(),
      target: map['target'] == null
          ? null
          : ExperimentTemplateActionTarget.fromMap(
              (map['target'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
