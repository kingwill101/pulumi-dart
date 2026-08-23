// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_control_mapping_source.dart';

/// Result data returned by getControl.
class GetControlResult {
  /// Recommended actions to carry out if the control isn't fulfilled.
  final String actionPlanInstructions;
  /// Title of the action plan for remediating the control.
  final String actionPlanTitle;
  /// ARN of the control.
  final String arn;
  /// Data mapping sources for the control.
  final List<GetControlControlMappingSource> controlMappingSources;
  /// Description of the control.
  final String description;
  /// Unique identifier for the control.
  final String id;
  final String name;
  final String region;
  /// Map of tags assigned to the control.
  final Map<String, String> tags;
  /// Steps to follow to determine if the control is satisfied.
  final String testingInformation;
  final String type;

  /// Creates a new [GetControlResult].
  /// [actionPlanInstructions] Recommended actions to carry out if the control isn't fulfilled.
  /// [actionPlanTitle] Title of the action plan for remediating the control.
  /// [arn] ARN of the control.
  /// [controlMappingSources] Data mapping sources for the control.
  /// [description] Description of the control.
  /// [id] Unique identifier for the control.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Map of tags assigned to the control.
  /// [testingInformation] Steps to follow to determine if the control is satisfied.
  /// [type] Required.
  const GetControlResult({
    required this.actionPlanInstructions,
    required this.actionPlanTitle,
    required this.arn,
    required this.controlMappingSources,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
    required this.testingInformation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionPlanInstructions': actionPlanInstructions,
      'actionPlanTitle': actionPlanTitle,
      'arn': arn,
      'controlMappingSources': pulumi.Input.encodeList<GetControlControlMappingSource, Map<String, dynamic>>(controlMappingSources, (value) => value.toMap()),
      'description': description,
      'id': id,
      'name': name,
      'region': region,
      'tags': tags,
      'testingInformation': testingInformation,
      'type': type,
    };
  }

  factory GetControlResult.fromMap(Map<String, dynamic> map) {
    return GetControlResult(
      actionPlanInstructions: map['actionPlanInstructions'] as String,
      actionPlanTitle: map['actionPlanTitle'] as String,
      arn: map['arn'] as String,
      controlMappingSources: pulumi.Input.decodeList<GetControlControlMappingSource>(map['controlMappingSources']!, (value) => GetControlControlMappingSource.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      testingInformation: map['testingInformation'] as String,
      type: map['type'] as String,
    );
  }
}
