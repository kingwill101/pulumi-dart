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
  const ExperimentPlanTemplateState({
    this.createTime,
    this.privacyLevel,
    this.templateDescription,
    this.templateId,
    this.templateName,
    this.templatePipelines,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privacyLevel: (() { final guardedValue = map['privacyLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateDescription: (() { final guardedValue = map['templateDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templatePipelines: (() { final guardedValue = map['templatePipelines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExperimentPlanTemplateTemplatePipeline>(guardedValue, (value) => ExperimentPlanTemplateTemplatePipeline.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

