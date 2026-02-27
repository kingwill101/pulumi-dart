// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../control_control_mapping_source/control_control_mapping_source.dart';

/// The set of arguments for Control.
class ControlArgs {
  /// Recommended actions to carry out if the control isn't fulfilled.
  final pulumi.Input<String>? actionPlanInstructions;

  /// Title of the action plan for remediating the control.
  final pulumi.Input<String>? actionPlanTitle;

  /// Data mapping sources. See `control_mapping_sources` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<ControlControlMappingSource>>? controlMappingSources;

  /// Description of the control.
  final pulumi.Input<String>? description;

  /// Name of the control.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the control. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Steps to follow to determine if the control is satisfied.
  final pulumi.Input<String>? testingInformation;

  ControlArgs({
    this.actionPlanInstructions,
    this.actionPlanTitle,
    this.controlMappingSources,
    this.description,
    this.name,
    this.region,
    this.tags,
    this.testingInformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionPlanInstructionsValue = actionPlanInstructions;
    if (actionPlanInstructionsValue != null) {
      map['actionPlanInstructions'] = actionPlanInstructionsValue;
    }
    final actionPlanTitleValue = actionPlanTitle;
    if (actionPlanTitleValue != null) {
      map['actionPlanTitle'] = actionPlanTitleValue;
    }
    final controlMappingSourcesValue = controlMappingSources;
    if (controlMappingSourcesValue != null) {
      map['controlMappingSources'] = pulumi.Input.mapOptionalInputValue<
              List<ControlControlMappingSource>, List<Map<String, dynamic>>>(
          controlMappingSourcesValue,
          (value) => pulumi.Input.encodeList<ControlControlMappingSource,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final testingInformationValue = testingInformation;
    if (testingInformationValue != null) {
      map['testingInformation'] = testingInformationValue;
    }
    return map;
  }

  factory ControlArgs.fromMap(Map<String, dynamic> map) {
    return ControlArgs(
      actionPlanInstructions:
          pulumi.Input.asOptionalInput<String>(map['actionPlanInstructions']),
      actionPlanTitle:
          pulumi.Input.asOptionalInput<String>(map['actionPlanTitle']),
      controlMappingSources:
          pulumi.Input.asOptionalInput<List<ControlControlMappingSource>>(
              map['controlMappingSources']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      testingInformation:
          pulumi.Input.asOptionalInput<String>(map['testingInformation']),
    );
  }
}
