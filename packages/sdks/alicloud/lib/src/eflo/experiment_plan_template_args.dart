// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_plan_template_template_pipeline.dart';

/// {@template pulumi_eflo_experiment_plan_template_experiment_plan_template_args_doc}
/// The set of arguments for ExperimentPlanTemplate.
/// {@endtemplate}
/// {@macro pulumi_eflo_experiment_plan_template_experiment_plan_template_args_doc}
class ExperimentPlanTemplateArgs {
  /// Used to indicate the privacy level of the content or information. It can have the following optional parameters:
  /// - private: Indicates that the content is private and restricted to specific users or permission groups. Private content is usually not publicly displayed, and only authorized users can view or edit it.
  /// - public: Indicates that the content is public and can be accessed by anyone. Public content is usually viewable by all users and is suitable for sharing information or resources
  final pulumi.Input<String> privacyLevel;

  /// Describe the purpose of this template.
  final pulumi.Input<String>? templateDescription;

  /// Help users identify and select specific templates.
  final pulumi.Input<String> templateName;

  /// Representative Template Pipeline. See `template_pipeline` below.
  final pulumi.Input<List<ExperimentPlanTemplateTemplatePipeline>>
  templatePipelines;

  /// Creates a new [ExperimentPlanTemplateArgs].
  /// [privacyLevel] Used to indicate the privacy level of the content or information. It can have the following optional parameters:
  /// [templateDescription] Describe the purpose of this template.
  /// [templateName] Help users identify and select specific templates.
  /// [templatePipelines] Representative Template Pipeline. See `template_pipeline` below.
  ExperimentPlanTemplateArgs({
    required this.privacyLevel,
    this.templateDescription,
    required this.templateName,
    required this.templatePipelines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privacyLevel': privacyLevel,
      'templateDescription': ?templateDescription,
      'templateName': templateName,
      'templatePipelines':
          pulumi.Input.mapInputValue<
            List<ExperimentPlanTemplateTemplatePipeline>,
            List<Map<String, dynamic>>
          >(
            templatePipelines,
            (value) =>
                pulumi.Input.encodeList<
                  ExperimentPlanTemplateTemplatePipeline,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ExperimentPlanTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ExperimentPlanTemplateArgs(
      privacyLevel: pulumi.Input.fromValue(map['privacyLevel'] as String),
      templateDescription: (() {
        final guardedValue = map['templateDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
      templatePipelines: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ExperimentPlanTemplateTemplatePipeline>(
          map['templatePipelines']!,
          (value) => ExperimentPlanTemplateTemplatePipeline.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
