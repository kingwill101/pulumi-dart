// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_endpoint_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperations_dataflow_endpoint_args_doc}
/// The set of arguments for DataflowEndpoint.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_dataflow_endpoint_args_doc}
class DataflowEndpointArgs {
  /// Name of Instance dataflowEndpoint resource
  final pulumi.Input<String>? dataflowEndpointName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DataflowEndpointProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DataflowEndpointArgs].
  /// [dataflowEndpointName] Name of Instance dataflowEndpoint resource
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DataflowEndpointArgs({
    pulumi.Output<String>? dataflowEndpointName,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    required pulumi.Output<String> instanceName,
    pulumi.Output<DataflowEndpointProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dataflowEndpointName = pulumi.Input.asOptionalInput<String>(dataflowEndpointName),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      properties = pulumi.Input.asOptionalInput<DataflowEndpointProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowEndpointName': ?dataflowEndpointName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DataflowEndpointArgs.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointArgs(
      dataflowEndpointName: map['dataflowEndpointName'] == null ? null : pulumi.Output.create<String>(map['dataflowEndpointName'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DataflowEndpointProperties>(DataflowEndpointProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

