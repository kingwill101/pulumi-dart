// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_dataflow_endpoint_args_doc}
/// Arguments for getDataflowEndpoint.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_dataflow_endpoint_args_doc}
class GetDataflowEndpointArgs {
  /// Name of Instance dataflowEndpoint resource
  final pulumi.Input<String> dataflowEndpointName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataflowEndpointArgs].
  /// [dataflowEndpointName] Name of Instance dataflowEndpoint resource
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDataflowEndpointArgs({
    required this.dataflowEndpointName,
    required this.instanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowEndpointName': dataflowEndpointName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataflowEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetDataflowEndpointArgs(
      dataflowEndpointName: pulumi.Input.fromValue(map['dataflowEndpointName'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

