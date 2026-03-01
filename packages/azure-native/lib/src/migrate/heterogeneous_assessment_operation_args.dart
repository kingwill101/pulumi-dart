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
    String? assessmentName,
    required String projectName,
    HeterogeneousAssessmentProperties? properties,
    required String resourceGroupName,
  }) :
      assessmentName = pulumi.Input.asOptionalInput<String>(assessmentName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<HeterogeneousAssessmentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      assessmentName: map['assessmentName'] == null ? null : map['assessmentName'] as String,
      projectName: map['projectName'] as String,
      properties: map['properties'] == null ? null : HeterogeneousAssessmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

