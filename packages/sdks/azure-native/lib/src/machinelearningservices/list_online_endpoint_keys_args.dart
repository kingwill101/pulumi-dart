// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_list_online_endpoint_keys_args_doc}
/// Arguments for listOnlineEndpointKeys.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_list_online_endpoint_keys_args_doc}
class ListOnlineEndpointKeysArgs {
  /// Online Endpoint name.
  final pulumi.Input<String> endpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListOnlineEndpointKeysArgs].
  /// [endpointName] Online Endpoint name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  const ListOnlineEndpointKeysArgs({
    required this.endpointName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListOnlineEndpointKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListOnlineEndpointKeysArgs(
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
