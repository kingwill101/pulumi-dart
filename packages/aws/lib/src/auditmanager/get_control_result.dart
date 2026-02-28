// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_control_mapping_source.dart';

/// Result data returned by getControl.
class GetControlResult {
  final String actionPlanInstructions;
  final String actionPlanTitle;
  final String arn;
  final List<GetControlControlMappingSource> controlMappingSources;
  final String description;
  final String id;
  final String name;
  final String region;
  final Map<String, String> tags;
  final String testingInformation;
  final String type;

  /// Creates a new [GetControlResult].
  /// [actionPlanInstructions] Required.
  /// [actionPlanTitle] Required.
  /// [arn] Required.
  /// [controlMappingSources] Required.
  /// [description] Required.
  /// [id] Required.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Required.
  /// [testingInformation] Required.
  /// [type] Required.
  GetControlResult({
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
      controlMappingSources: pulumi.Input.decodeList<GetControlControlMappingSource>(map['controlMappingSources'], (value) => GetControlControlMappingSource.fromMap((value as Map).cast<String, dynamic>())),
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

