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
    pulumi.Output<String>? actionPlanInstructions,
    pulumi.Output<String>? actionPlanTitle,
    pulumi.Output<List<ControlControlMappingSource>>? controlMappingSources,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? testingInformation,
  }) :
      actionPlanInstructions = pulumi.Input.asOptionalInput<String>(actionPlanInstructions),
      actionPlanTitle = pulumi.Input.asOptionalInput<String>(actionPlanTitle),
      controlMappingSources = pulumi.Input.asOptionalInput<List<ControlControlMappingSource>>(controlMappingSources),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      testingInformation = pulumi.Input.asOptionalInput<String>(testingInformation);

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
      actionPlanInstructions: map['actionPlanInstructions'] == null ? null : pulumi.Output.create<String>(map['actionPlanInstructions'] as String),
      actionPlanTitle: map['actionPlanTitle'] == null ? null : pulumi.Output.create<String>(map['actionPlanTitle'] as String),
      controlMappingSources: map['controlMappingSources'] == null ? null : pulumi.Output.create<List<ControlControlMappingSource>>(pulumi.Input.decodeList<ControlControlMappingSource>(map['controlMappingSources'], (value) => ControlControlMappingSource.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      testingInformation: map['testingInformation'] == null ? null : pulumi.Output.create<String>(map['testingInformation'] as String),
    );
  }
}

