// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_assessment_v2_properties.dart';

/// {@template pulumi_migrate_machine_assessments_v2_operation_args_doc}
/// The set of arguments for MachineAssessmentsV2Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_machine_assessments_v2_operation_args_doc}
class MachineAssessmentsV2OperationArgs {
  /// Machine Assessment V2 ARM name
  final pulumi.Input<String>? assessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<MachineAssessmentV2Properties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [MachineAssessmentsV2OperationArgs].
  /// [assessmentName] Machine Assessment V2 ARM name
  /// [projectName] Assessment Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  MachineAssessmentsV2OperationArgs({
    pulumi.Output<String>? assessmentName,
    required pulumi.Output<String> projectName,
    pulumi.Output<MachineAssessmentV2Properties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      assessmentName = pulumi.Input.asOptionalInput<String>(assessmentName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<MachineAssessmentV2Properties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      assessmentName: map['assessmentName'] == null ? null : pulumi.Output.create<String>(map['assessmentName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<MachineAssessmentV2Properties>(MachineAssessmentV2Properties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

