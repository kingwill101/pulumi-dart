// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avs_assessment_properties_v2.dart';

/// {@template pulumi_migrate_avs_assessments_v2_operation_args_doc}
/// The set of arguments for AvsAssessmentsV2Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_avs_assessments_v2_operation_args_doc}
class AvsAssessmentsV2OperationArgs {
  /// AVS Assessment ARM name
  final pulumi.Input<String>? assessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<AvsAssessmentPropertiesV2>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AvsAssessmentsV2OperationArgs].
  /// [assessmentName] AVS Assessment ARM name
  /// [projectName] Assessment Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AvsAssessmentsV2OperationArgs({
    this.assessmentName,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': ?assessmentName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<AvsAssessmentPropertiesV2, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AvsAssessmentsV2OperationArgs.fromMap(Map<String, dynamic> map) {
    return AvsAssessmentsV2OperationArgs(
      assessmentName: map['assessmentName'] == null ? null : (map['assessmentName']! as String).input(),
      projectName: (map['projectName'] as String).input(),
      properties: map['properties'] == null ? null : (AvsAssessmentPropertiesV2.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

