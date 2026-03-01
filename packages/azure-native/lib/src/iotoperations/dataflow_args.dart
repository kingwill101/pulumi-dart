// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperations_dataflow_args_doc}
/// The set of arguments for Dataflow.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_dataflow_args_doc}
class DataflowArgs {
  /// Name of Instance dataflowProfile dataflow resource
  final pulumi.Input<String>? dataflowName;
  /// Name of Instance dataflowProfile resource
  final pulumi.Input<String> dataflowProfileName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DataflowProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DataflowArgs].
  /// [dataflowName] Name of Instance dataflowProfile dataflow resource
  /// [dataflowProfileName] Name of Instance dataflowProfile resource
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DataflowArgs({
    String? dataflowName,
    required String dataflowProfileName,
    required ExtendedLocation extendedLocation,
    required String instanceName,
    DataflowProperties? properties,
    required String resourceGroupName,
  }) :
      dataflowName = pulumi.Input.asOptionalInput<String>(dataflowName),
      dataflowProfileName = pulumi.Input.asInput<String>(dataflowProfileName),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      properties = pulumi.Input.asOptionalInput<DataflowProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowName': ?dataflowName,
      'dataflowProfileName': dataflowProfileName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DataflowProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DataflowArgs.fromMap(Map<String, dynamic> map) {
    return DataflowArgs(
      dataflowName: map['dataflowName'] == null ? null : map['dataflowName'] as String,
      dataflowProfileName: map['dataflowProfileName'] as String,
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      instanceName: map['instanceName'] as String,
      properties: map['properties'] == null ? null : DataflowProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

