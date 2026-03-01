// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agfoodplatform_get_solution_args_doc}
/// Arguments for getSolution.
/// {@endtemplate}
/// {@macro pulumi_agfoodplatform_get_solution_args_doc}
class GetSolutionArgs {
  /// DataManagerForAgriculture resource name.
  final pulumi.Input<String> dataManagerForAgricultureResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SolutionId for Data Manager For Agriculture Resource.
  final pulumi.Input<String> solutionId;

  /// Creates a new [GetSolutionArgs].
  /// [dataManagerForAgricultureResourceName] DataManagerForAgriculture resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionId] SolutionId for Data Manager For Agriculture Resource.
  GetSolutionArgs({
    required pulumi.Output<String> dataManagerForAgricultureResourceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> solutionId,
  }) :
      dataManagerForAgricultureResourceName = pulumi.Input.asInput<String>(dataManagerForAgricultureResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionId = pulumi.Input.asInput<String>(solutionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataManagerForAgricultureResourceName': dataManagerForAgricultureResourceName,
      'resourceGroupName': resourceGroupName,
      'solutionId': solutionId,
    };
  }

  factory GetSolutionArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionArgs(
      dataManagerForAgricultureResourceName: pulumi.Output.create<String>(map['dataManagerForAgricultureResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionId: pulumi.Output.create<String>(map['solutionId'] as String),
    );
  }
}

