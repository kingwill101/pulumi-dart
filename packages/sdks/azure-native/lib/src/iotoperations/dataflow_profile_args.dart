// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_profile_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperations_dataflow_profile_args_doc}
/// The set of arguments for DataflowProfile.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_dataflow_profile_args_doc}
class DataflowProfileArgs {
  /// Name of Instance dataflowProfile resource
  final pulumi.Input<String>? dataflowProfileName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DataflowProfileProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DataflowProfileArgs].
  /// [dataflowProfileName] Name of Instance dataflowProfile resource
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DataflowProfileArgs({
    pulumi.Output<String>? dataflowProfileName,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    required pulumi.Output<String> instanceName,
    pulumi.Output<DataflowProfileProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dataflowProfileName = pulumi.Input.asOptionalInput<String>(dataflowProfileName),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      properties = pulumi.Input.asOptionalInput<DataflowProfileProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowProfileName': ?dataflowProfileName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DataflowProfileProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DataflowProfileArgs.fromMap(Map<String, dynamic> map) {
    return DataflowProfileArgs(
      dataflowProfileName: map['dataflowProfileName'] == null ? null : pulumi.Output.create<String>(map['dataflowProfileName'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DataflowProfileProperties>(DataflowProfileProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

