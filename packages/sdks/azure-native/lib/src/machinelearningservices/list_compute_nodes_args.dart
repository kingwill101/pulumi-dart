// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_list_compute_nodes_args_doc}
/// Arguments for listComputeNodes.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_list_compute_nodes_args_doc}
class ListComputeNodesArgs {
  /// Name of the Azure Machine Learning compute.
  final pulumi.Input<String> computeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListComputeNodesArgs].
  /// [computeName] Name of the Azure Machine Learning compute.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ListComputeNodesArgs({
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

  factory ListComputeNodesArgs.fromMap(Map<String, dynamic> map) {
    return ListComputeNodesArgs(
      computeName: (map['computeName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

