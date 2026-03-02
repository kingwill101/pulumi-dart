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
    this.dataflowGraphName,
    required this.dataflowProfileName,
    this.extendedLocation,
    required this.instanceName,
    this.properties,
    required this.resourceGroupName,
  });

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
      dataflowGraphName: map['dataflowGraphName'] == null ? null : (map['dataflowGraphName']! as String).input(),
      dataflowProfileName: (map['dataflowProfileName'] as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      instanceName: (map['instanceName'] as String).input(),
      properties: map['properties'] == null ? null : (DataflowGraphProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

