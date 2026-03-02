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
    this.compoundAssessmentName,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
  });

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
      compoundAssessmentName: map['compoundAssessmentName'] == null ? null : (map['compoundAssessmentName']! as String).input(),
      projectName: (map['projectName'] as String).input(),
      properties: map['properties'] == null ? null : (CompoundAssessmentProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

