// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_online_endpoint_token_args_doc}
/// Arguments for getOnlineEndpointToken.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_online_endpoint_token_args_doc}
class GetOnlineEndpointTokenArgs {
  /// Online Endpoint name.
  final pulumi.Input<String> endpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetOnlineEndpointTokenArgs].
  /// [endpointName] Online Endpoint name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetOnlineEndpointTokenArgs({
    required String endpointName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetOnlineEndpointTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetOnlineEndpointTokenArgs(
      endpointName: map['endpointName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

