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
    pulumi.Output<String>? assessmentName,
    required pulumi.Output<String> projectName,
    pulumi.Output<AvsAssessmentPropertiesV2>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      assessmentName = pulumi.Input.asOptionalInput<String>(assessmentName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<AvsAssessmentPropertiesV2>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      assessmentName: map['assessmentName'] == null ? null : pulumi.Output.create<String>(map['assessmentName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AvsAssessmentPropertiesV2>(AvsAssessmentPropertiesV2.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

