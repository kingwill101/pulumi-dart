// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_grid.dart';

/// {@template pulumi_digitaltwins_digital_twins_endpoint_args_doc}
/// The set of arguments for DigitalTwinsEndpoint.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_digital_twins_endpoint_args_doc}
class DigitalTwinsEndpointArgs {
  /// Name of Endpoint Resource.
  final pulumi.Input<String>? endpointName;
  /// DigitalTwinsInstance endpoint resource properties.
  final pulumi.Input<EventGrid> properties;
  /// The name of the resource group that contains the DigitalTwinsInstance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DigitalTwinsInstance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [DigitalTwinsEndpointArgs].
  /// [endpointName] Name of Endpoint Resource.
  /// [properties] DigitalTwinsInstance endpoint resource properties.
  /// [resourceGroupName] The name of the resource group that contains the DigitalTwinsInstance.
  /// [resourceName] The name of the DigitalTwinsInstance.
  DigitalTwinsEndpointArgs({
    this.endpointName,
    required this.properties,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'properties': pulumi.Input.mapInputValue<EventGrid, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory DigitalTwinsEndpointArgs.fromMap(Map<String, dynamic> map) {
    return DigitalTwinsEndpointArgs(
      endpointName: map['endpointName'] == null ? null : (map['endpointName']! as String).input(),
      properties: (EventGrid.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

