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
    required pulumi.Output<String> dataflowEndpointName,
    required pulumi.Output<String> instanceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dataflowEndpointName = pulumi.Input.asInput<String>(dataflowEndpointName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowEndpointName': dataflowEndpointName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataflowEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetDataflowEndpointArgs(
      dataflowEndpointName: pulumi.Output.create<String>(map['dataflowEndpointName'] as String),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

