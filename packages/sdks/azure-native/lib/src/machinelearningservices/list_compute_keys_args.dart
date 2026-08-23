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
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListComputeKeysArgs].
  /// [computeName] Name of the Azure Machine Learning compute.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  const ListComputeKeysArgs({
    required this.computeName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeName': computeName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListComputeKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListComputeKeysArgs(
      computeName: pulumi.Input.fromValue(map['computeName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
