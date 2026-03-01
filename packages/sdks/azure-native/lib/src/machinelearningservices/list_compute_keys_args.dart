// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_list_compute_keys_args_doc}
/// Arguments for listComputeKeys.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_list_compute_keys_args_doc}
class ListComputeKeysArgs {
  /// Name of the Azure Machine Learning compute.
  final pulumi.Input<String> computeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListComputeKeysArgs].
  /// [computeName] Name of the Azure Machine Learning compute.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ListComputeKeysArgs({
    required pulumi.Output<String> computeName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
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

  factory ListComputeKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListComputeKeysArgs(
      computeName: pulumi.Output.create<String>(map['computeName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

