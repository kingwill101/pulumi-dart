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
    pulumi.Output<String>? assessmentName,
    pulumi.Output<String>? eTag,
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<AssessmentProperties> properties,
    required pulumi.Output<String> resourceGroupName,
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
      assessmentName: map['assessmentName'] == null ? null : pulumi.Output.create<String>(map['assessmentName'] as String),
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: pulumi.Output.create<AssessmentProperties>(AssessmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

