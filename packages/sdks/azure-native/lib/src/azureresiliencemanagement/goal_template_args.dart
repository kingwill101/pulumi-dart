// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goal_template_properties.dart';

/// {@template pulumi_azureresiliencemanagement_goal_template_args_doc}
/// The set of arguments for GoalTemplate.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_goal_template_args_doc}
class GoalTemplateArgs {
  /// The name of the goalTemplate
  final pulumi.Input<String>? goalTemplateName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<GoalTemplateProperties>? properties;
  /// The name of the service group.
  final pulumi.Input<String> serviceGroupName;

  /// Creates a new [GoalTemplateArgs].
  /// [goalTemplateName] The name of the goalTemplate
  /// [properties] The resource-specific properties for this resource.
  /// [serviceGroupName] The name of the service group.
  const GoalTemplateArgs({
    this.goalTemplateName,
    this.properties,
    required this.serviceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goalTemplateName': ?goalTemplateName,
      'properties': ?pulumi.Input.mapOptionalInputValue<GoalTemplateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'serviceGroupName': serviceGroupName,
    };
  }

  factory GoalTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GoalTemplateArgs(
      goalTemplateName: (() { final guardedValue = map['goalTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoalTemplateProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
    );
  }
}
