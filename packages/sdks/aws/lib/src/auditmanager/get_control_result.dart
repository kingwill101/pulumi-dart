// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_control_mapping_source.dart';

/// Result data returned by getControl.
class GetControlResult {
  /// Recommended actions to carry out if the control isn't fulfilled.
  final String? actionPlanInstructions;
  /// Title of the action plan for remediating the control.
  final String? actionPlanTitle;
  /// ARN of the control.
  final String? arn;
  /// Data mapping sources for the control.
  final List<GetControlControlMappingSource>? controlMappingSources;
  /// Description of the control.
  final String? description;
  /// Unique identifier for the control.
  final String? id;
  final String? name;
  final String? region;
  /// Map of tags assigned to the control.
  final Map<String, String>? tags;
  /// Steps to follow to determine if the control is satisfied.
  final String? testingInformation;
  final String? type;

  /// Creates a new [GetControlResult].
  /// [actionPlanInstructions] Recommended actions to carry out if the control isn't fulfilled.
  /// [actionPlanTitle] Title of the action plan for remediating the control.
  /// [arn] ARN of the control.
  /// [controlMappingSources] Data mapping sources for the control.
  /// [description] Description of the control.
  /// [id] Unique identifier for the control.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] Map of tags assigned to the control.
  /// [testingInformation] Steps to follow to determine if the control is satisfied.
  /// [type] Optional.
  const GetControlResult({
    this.actionPlanInstructions,
    this.actionPlanTitle,
    this.arn,
    this.controlMappingSources,
    this.description,
    this.id,
    this.name,
    this.region,
    this.tags,
    this.testingInformation,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionPlanInstructions': ?actionPlanInstructions,
      'actionPlanTitle': ?actionPlanTitle,
      'arn': ?arn,
      'controlMappingSources': ?(() { final guardedValue = controlMappingSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlControlMappingSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'testingInformation': ?testingInformation,
      'type': ?type,
    };
  }

  factory GetControlResult.fromMap(Map<String, dynamic> map) {
    return GetControlResult(
      actionPlanInstructions: (() { final guardedValue = map['actionPlanInstructions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      actionPlanTitle: (() { final guardedValue = map['actionPlanTitle']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      controlMappingSources: (() { final guardedValue = map['controlMappingSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlControlMappingSource>(guardedValue, (value) => GetControlControlMappingSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      testingInformation: (() { final guardedValue = map['testingInformation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
