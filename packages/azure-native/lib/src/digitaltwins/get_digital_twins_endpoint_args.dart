// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_digitaltwins_get_digital_twins_endpoint_args_doc}
/// Arguments for getDigitalTwinsEndpoint.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_get_digital_twins_endpoint_args_doc}
class GetDigitalTwinsEndpointArgs {
  /// Name of Endpoint Resource.
  final pulumi.Input<String> endpointName;
  /// The name of the resource group that contains the DigitalTwinsInstance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DigitalTwinsInstance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetDigitalTwinsEndpointArgs].
  /// [endpointName] Name of Endpoint Resource.
  /// [resourceGroupName] The name of the resource group that contains the DigitalTwinsInstance.
  /// [resourceName] The name of the DigitalTwinsInstance.
  GetDigitalTwinsEndpointArgs({
    required String endpointName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetDigitalTwinsEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetDigitalTwinsEndpointArgs(
      endpointName: map['endpointName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

