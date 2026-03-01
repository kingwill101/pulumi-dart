// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_dataflow_graph_args_doc}
/// Arguments for getDataflowGraph.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_dataflow_graph_args_doc}
class GetDataflowGraphArgs {
  /// Name of Instance dataflowEndpoint resource.
  final pulumi.Input<String> dataflowGraphName;
  /// Name of Instance dataflowProfile resource
  final pulumi.Input<String> dataflowProfileName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataflowGraphArgs].
  /// [dataflowGraphName] Name of Instance dataflowEndpoint resource.
  /// [dataflowProfileName] Name of Instance dataflowProfile resource
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDataflowGraphArgs({
    required pulumi.Output<String> dataflowGraphName,
    required pulumi.Output<String> dataflowProfileName,
    required pulumi.Output<String> instanceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dataflowGraphName = pulumi.Input.asInput<String>(dataflowGraphName),
      dataflowProfileName = pulumi.Input.asInput<String>(dataflowProfileName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowGraphName': dataflowGraphName,
      'dataflowProfileName': dataflowProfileName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataflowGraphArgs.fromMap(Map<String, dynamic> map) {
    return GetDataflowGraphArgs(
      dataflowGraphName: pulumi.Output.create<String>(map['dataflowGraphName'] as String),
      dataflowProfileName: pulumi.Output.create<String>(map['dataflowProfileName'] as String),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

