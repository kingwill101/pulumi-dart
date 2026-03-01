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
    required String name,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetServerlessEndpointStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessEndpointStatusArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

