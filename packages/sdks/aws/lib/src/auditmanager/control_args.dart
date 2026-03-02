// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_control_mapping_source.dart';

/// {@template pulumi_auditmanager_control_control_args_doc}
/// The set of arguments for Control.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_control_control_args_doc}
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

  /// Creates a new [ControlArgs].
  /// [actionPlanInstructions] Recommended actions to carry out if the control isn't fulfilled.
  /// [actionPlanTitle] Title of the action plan for remediating the control.
  /// [controlMappingSources] Data mapping sources. See `control_mapping_sources` below.
  /// [description] Description of the control.
  /// [name] Name of the control.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the control. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [testingInformation] Steps to follow to determine if the control is satisfied.
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
    return <String, dynamic>{
      'actionPlanInstructions': ?actionPlanInstructions,
      'actionPlanTitle': ?actionPlanTitle,
      'controlMappingSources': ?pulumi.Input.mapOptionalInputValue<List<ControlControlMappingSource>, List<Map<String, dynamic>>>(controlMappingSources, (value) => pulumi.Input.encodeList<ControlControlMappingSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'testingInformation': ?testingInformation,
    };
  }

  factory ControlArgs.fromMap(Map<String, dynamic> map) {
    return ControlArgs(
      actionPlanInstructions: map['actionPlanInstructions'] == null ? null : ((map['actionPlanInstructions'] as String).input()).input(),
      actionPlanTitle: map['actionPlanTitle'] == null ? null : ((map['actionPlanTitle'] as String).input()).input(),
      controlMappingSources: map['controlMappingSources'] == null ? null : ((pulumi.Input.decodeList<ControlControlMappingSource>(map['controlMappingSources']!, (value) => ControlControlMappingSource.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      testingInformation: map['testingInformation'] == null ? null : ((map['testingInformation'] as String).input()).input(),
    );
  }
}

