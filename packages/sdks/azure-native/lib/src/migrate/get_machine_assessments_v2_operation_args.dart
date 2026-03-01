// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_machine_assessments_v2_operation_args_doc}
/// Arguments for getMachineAssessmentsV2Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_machine_assessments_v2_operation_args_doc}
class GetMachineAssessmentsV2OperationArgs {
  /// Machine Assessment V2 ARM name
  final pulumi.Input<String> assessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMachineAssessmentsV2OperationArgs].
  /// [assessmentName] Machine Assessment V2 ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMachineAssessmentsV2OperationArgs({
    required pulumi.Output<String> assessmentName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      assessmentName = pulumi.Input.asInput<String>(assessmentName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': assessmentName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMachineAssessmentsV2OperationArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineAssessmentsV2OperationArgs(
      assessmentName: pulumi.Output.create<String>(map['assessmentName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

