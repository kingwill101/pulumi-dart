// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_list_endpoint_keys_args_doc}
/// Arguments for listEndpointKeys.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_list_endpoint_keys_args_doc}
class ListEndpointKeysArgs {
  /// Name of the endpoint resource.
  final pulumi.Input<String> endpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListEndpointKeysArgs].
  /// [endpointName] Name of the endpoint resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  ListEndpointKeysArgs({
    required pulumi.Output<String> endpointName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
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

  factory ListEndpointKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListEndpointKeysArgs(
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

