// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_plan_template_template_pipeline.dart';

/// Input properties used for looking up and filtering ExperimentPlanTemplate resources.
class ExperimentPlanTemplateState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Used to indicate the privacy level of the content or information. It can have the following optional parameters:
  /// - private: Indicates that the content is private and restricted to specific users or permission groups. Private content is usually not publicly displayed, and only authorized users can view or edit it.
  /// - public: Indicates that the content is public and can be accessed by anyone. Public content is usually viewable by all users and is suitable for sharing information or resources
  final pulumi.Input<String>? privacyLevel;
  /// Describe the purpose of this template.
  final pulumi.Input<String>? templateDescription;
  /// The ID of the template.
  final pulumi.Input<String>? templateId;
  /// Help users identify and select specific templates.
  final pulumi.Input<String>? templateName;
  /// Representative Template Pipeline. See `template_pipeline` below.
  final pulumi.Input<List<ExperimentPlanTemplateTemplatePipeline>>? templatePipelines;

  /// Creates a new [ExperimentPlanTemplateState].
  /// [createTime] The creation time of the resource.
  /// [privacyLevel] Used to indicate the privacy level of the content or information. It can have the following optional parameters:
  /// [templateDescription] Describe the purpose of this template.
  /// [templateId] The ID of the template.
  /// [templateName] Help users identify and select specific templates.
  /// [templatePipelines] Representative Template Pipeline. See `template_pipeline` below.
  ExperimentPlanTemplateState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? privacyLevel,
    pulumi.Output<String>? templateDescription,
    pulumi.Output<String>? templateId,
    pulumi.Output<String>? templateName,
    pulumi.Output<List<ExperimentPlanTemplateTemplatePipeline>>? templatePipelines,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      privacyLevel = pulumi.Input.asOptionalInput<String>(privacyLevel),
      templateDescription = pulumi.Input.asOptionalInput<String>(templateDescription),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      templateName = pulumi.Input.asOptionalInput<String>(templateName),
      templatePipelines = pulumi.Input.asOptionalInput<List<ExperimentPlanTemplateTemplatePipeline>>(templatePipelines);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'privacyLevel': ?privacyLevel,
      'templateDescription': ?templateDescription,
      'templateId': ?templateId,
      'templateName': ?templateName,
      'templatePipelines': ?pulumi.Input.mapOptionalInputValue<List<ExperimentPlanTemplateTemplatePipeline>, List<Map<String, dynamic>>>(templatePipelines, (value) => pulumi.Input.encodeList<ExperimentPlanTemplateTemplatePipeline, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentPlanTemplateState.fromMap(Map<String, dynamic> map) {
    return ExperimentPlanTemplateState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      privacyLevel: map['privacyLevel'] == null ? null : pulumi.Output.create<String>(map['privacyLevel'] as String),
      templateDescription: map['templateDescription'] == null ? null : pulumi.Output.create<String>(map['templateDescription'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
      templatePipelines: map['templatePipelines'] == null ? null : pulumi.Output.create<List<ExperimentPlanTemplateTemplatePipeline>>(pulumi.Input.decodeList<ExperimentPlanTemplateTemplatePipeline>(map['templatePipelines'], (value) => ExperimentPlanTemplateTemplatePipeline.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

