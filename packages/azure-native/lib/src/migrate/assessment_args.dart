// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_properties.dart';

/// {@template pulumi_migrate_assessment_args_doc}
/// The set of arguments for Assessment.
/// {@endtemplate}
/// {@macro pulumi_migrate_assessment_args_doc}
class AssessmentArgs {
  /// Unique name of an assessment within a project.
  final pulumi.Input<String>? assessmentName;
  /// For optimistic concurrency control.
  final pulumi.Input<String>? eTag;
  /// Unique name of a group within a project.
  final pulumi.Input<String> groupName;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  /// Properties of the assessment.
  final pulumi.Input<AssessmentProperties> properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AssessmentArgs].
  /// [assessmentName] Unique name of an assessment within a project.
  /// [eTag] For optimistic concurrency control.
  /// [groupName] Unique name of a group within a project.
  /// [projectName] Name of the Azure Migrate project.
  /// [properties] Properties of the assessment.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  AssessmentArgs({
    String? assessmentName,
    String? eTag,
    required String groupName,
    required String projectName,
    required AssessmentProperties properties,
    required String resourceGroupName,
  }) :
      assessmentName = pulumi.Input.asOptionalInput<String>(assessmentName),
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      groupName = pulumi.Input.asInput<String>(groupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asInput<AssessmentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': ?assessmentName,
      'eTag': ?eTag,
      'groupName': groupName,
      'projectName': projectName,
      'properties': pulumi.Input.mapInputValue<AssessmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AssessmentArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentArgs(
      assessmentName: map['assessmentName'] == null ? null : map['assessmentName'] as String,
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      groupName: map['groupName'] as String,
      projectName: map['projectName'] as String,
      properties: AssessmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

