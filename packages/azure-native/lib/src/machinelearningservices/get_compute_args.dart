// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_compute_args_doc}
/// Arguments for getCompute.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_compute_args_doc}
class GetComputeArgs {
  /// Name of the Azure Machine Learning compute.
  final pulumi.Input<String> computeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetComputeArgs].
  /// [computeName] Name of the Azure Machine Learning compute.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetComputeArgs({
    required String computeName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      computeName = pulumi.Input.asInput<String>(computeName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeName': computeName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetComputeArgs.fromMap(Map<String, dynamic> map) {
    return GetComputeArgs(
      computeName: map['computeName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

