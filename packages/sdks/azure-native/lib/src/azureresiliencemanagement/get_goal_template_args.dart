// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureresiliencemanagement_get_goal_template_args_doc}
/// Arguments for getGoalTemplate.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_get_goal_template_args_doc}
class GetGoalTemplateArgs {
  /// The name of the goalTemplate
  final pulumi.Input<String> goalTemplateName;
  /// The name of the service group.
  final pulumi.Input<String> serviceGroupName;

  /// Creates a new [GetGoalTemplateArgs].
  /// [goalTemplateName] The name of the goalTemplate
  /// [serviceGroupName] The name of the service group.
  const GetGoalTemplateArgs({
    required this.goalTemplateName,
    required this.serviceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goalTemplateName': goalTemplateName,
      'serviceGroupName': serviceGroupName,
    };
  }

  factory GetGoalTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetGoalTemplateArgs(
      goalTemplateName: pulumi.Input.fromValue(map['goalTemplateName'] as String),
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
    );
  }
}
