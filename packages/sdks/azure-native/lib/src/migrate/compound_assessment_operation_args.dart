// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compound_assessment_properties.dart';

/// {@template pulumi_migrate_compound_assessment_operation_args_doc}
/// The set of arguments for CompoundAssessmentOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_compound_assessment_operation_args_doc}
class CompoundAssessmentOperationArgs {
  /// Compound Assessment ARM name
  final pulumi.Input<String>? compoundAssessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<CompoundAssessmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CompoundAssessmentOperationArgs].
  /// [compoundAssessmentName] Compound Assessment ARM name
  /// [projectName] Assessment Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  CompoundAssessmentOperationArgs({
    pulumi.Output<String>? compoundAssessmentName,
    required pulumi.Output<String> projectName,
    pulumi.Output<CompoundAssessmentProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      compoundAssessmentName = pulumi.Input.asOptionalInput<String>(compoundAssessmentName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<CompoundAssessmentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compoundAssessmentName': ?compoundAssessmentName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CompoundAssessmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CompoundAssessmentOperationArgs.fromMap(Map<String, dynamic> map) {
    return CompoundAssessmentOperationArgs(
      compoundAssessmentName: map['compoundAssessmentName'] == null ? null : pulumi.Output.create<String>(map['compoundAssessmentName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CompoundAssessmentProperties>(CompoundAssessmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

