// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_linked_service_args_doc}
/// Arguments for getLinkedService.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_linked_service_args_doc}
class GetLinkedServiceArgs {
  /// Friendly name of the linked workspace
  final pulumi.Input<String> linkName;

  /// Name of the resource group in which workspace is located.
  final pulumi.Input<String> resourceGroupName;

  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetLinkedServiceArgs].
  /// [linkName] Friendly name of the linked workspace
  /// [resourceGroupName] Name of the resource group in which workspace is located.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetLinkedServiceArgs({
    required this.linkName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkName': linkName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetLinkedServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkedServiceArgs(
      linkName: pulumi.Input.fromValue(map['linkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
