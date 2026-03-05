// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_serverless_endpoint_status_args_doc}
/// Arguments for getServerlessEndpointStatus.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_serverless_endpoint_status_args_doc}
class GetServerlessEndpointStatusArgs {
  /// Serverless Endpoint name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetServerlessEndpointStatusArgs].
  /// [name] Serverless Endpoint name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetServerlessEndpointStatusArgs({
    required this.name,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetServerlessEndpointStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessEndpointStatusArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

