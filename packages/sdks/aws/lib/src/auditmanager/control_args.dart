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
  const ControlArgs({
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
      actionPlanInstructions: (() { final guardedValue = map['actionPlanInstructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionPlanTitle: (() { final guardedValue = map['actionPlanTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlMappingSources: (() { final guardedValue = map['controlMappingSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ControlControlMappingSource>(guardedValue, (value) => ControlControlMappingSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      testingInformation: (() { final guardedValue = map['testingInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

