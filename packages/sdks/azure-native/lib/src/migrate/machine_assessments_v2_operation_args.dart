// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_assessment_v2_properties.dart';

/// {@template pulumi_migrate_machine_assessments_v2_operation_args_doc}
/// The set of arguments for MachineAssessmentsV2Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_machine_assessments_v2_operation_args_doc}
class MachineAssessmentsV2OperationArgs {
  /// Machine Assessment V2 ARM name
  final pulumi.Input<String?>? assessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<MachineAssessmentV2Properties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [MachineAssessmentsV2OperationArgs].
  /// [assessmentName] Machine Assessment V2 ARM name
  /// [projectName] Assessment Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const MachineAssessmentsV2OperationArgs({
    this.assessmentName,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': ?assessmentName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MachineAssessmentV2Properties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory MachineAssessmentsV2OperationArgs.fromMap(Map<String, dynamic> map) {
    return MachineAssessmentsV2OperationArgs(
      assessmentName: (() { final guardedValue = map['assessmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MachineAssessmentV2Properties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
