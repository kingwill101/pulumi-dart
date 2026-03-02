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
    this.dataflowProfileName,
    required this.extendedLocation,
    required this.instanceName,
    this.properties,
    required this.resourceGroupName,
  });

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
      dataflowProfileName: map['dataflowProfileName'] == null ? null : (map['dataflowProfileName']! as String).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      instanceName: (map['instanceName'] as String).input(),
      properties: map['properties'] == null ? null : (DataflowProfileProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

