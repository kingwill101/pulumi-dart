// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_digitaltwins_digital_twins_endpoint_args_doc}
/// The set of arguments for DigitalTwinsEndpoint.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_digital_twins_endpoint_args_doc}
class DigitalTwinsEndpointArgs {
  /// Name of Endpoint Resource.
  final pulumi.Input<String?>? endpointName;
  /// DigitalTwinsInstance endpoint resource properties.
  final pulumi.Input<dynamic> properties;
  /// The name of the resource group that contains the DigitalTwinsInstance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DigitalTwinsInstance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [DigitalTwinsEndpointArgs].
  /// [endpointName] Name of Endpoint Resource.
  /// [properties] DigitalTwinsInstance endpoint resource properties.
  /// [resourceGroupName] The name of the resource group that contains the DigitalTwinsInstance.
  /// [resourceName] The name of the DigitalTwinsInstance.
  const DigitalTwinsEndpointArgs({
    this.endpointName,
    required this.properties,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory DigitalTwinsEndpointArgs.fromMap(Map<String, dynamic> map) {
    return DigitalTwinsEndpointArgs(
      endpointName: (() { final guardedValue = map['endpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(map['properties']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
