// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'heterogeneous_assessment_properties.dart';

/// {@template pulumi_migrate_heterogeneous_assessment_operation_args_doc}
/// The set of arguments for HeterogeneousAssessmentOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_heterogeneous_assessment_operation_args_doc}
class HeterogeneousAssessmentOperationArgs {
  /// Heterogeneous Assessment ARM name
  final pulumi.Input<String>? assessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<HeterogeneousAssessmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [HeterogeneousAssessmentOperationArgs].
  /// [assessmentName] Heterogeneous Assessment ARM name
  /// [projectName] Assessment Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  HeterogeneousAssessmentOperationArgs({
    this.assessmentName,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': ?assessmentName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<HeterogeneousAssessmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HeterogeneousAssessmentOperationArgs.fromMap(Map<String, dynamic> map) {
    return HeterogeneousAssessmentOperationArgs(
      assessmentName: map['assessmentName'] == null ? null : (map['assessmentName']! as String).input(),
      projectName: (map['projectName'] as String).input(),
      properties: map['properties'] == null ? null : (HeterogeneousAssessmentProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

