// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperations_dataflow_graph_args_doc}
/// The set of arguments for DataflowGraph.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_dataflow_graph_args_doc}
class DataflowGraphArgs {
  /// Name of Instance dataflowEndpoint resource.
  final pulumi.Input<String>? dataflowGraphName;
  /// Name of Instance dataflowProfile resource
  final pulumi.Input<String> dataflowProfileName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DataflowGraphProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DataflowGraphArgs].
  /// [dataflowGraphName] Name of Instance dataflowEndpoint resource.
  /// [dataflowProfileName] Name of Instance dataflowProfile resource
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DataflowGraphArgs({
    pulumi.Output<String>? dataflowGraphName,
    required pulumi.Output<String> dataflowProfileName,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    required pulumi.Output<String> instanceName,
    pulumi.Output<DataflowGraphProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dataflowGraphName = pulumi.Input.asOptionalInput<String>(dataflowGraphName),
      dataflowProfileName = pulumi.Input.asInput<String>(dataflowProfileName),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      properties = pulumi.Input.asOptionalInput<DataflowGraphProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowGraphName': ?dataflowGraphName,
      'dataflowProfileName': dataflowProfileName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DataflowGraphProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DataflowGraphArgs.fromMap(Map<String, dynamic> map) {
    return DataflowGraphArgs(
      dataflowGraphName: map['dataflowGraphName'] == null ? null : pulumi.Output.create<String>(map['dataflowGraphName'] as String),
      dataflowProfileName: pulumi.Output.create<String>(map['dataflowProfileName'] as String),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DataflowGraphProperties>(DataflowGraphProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

