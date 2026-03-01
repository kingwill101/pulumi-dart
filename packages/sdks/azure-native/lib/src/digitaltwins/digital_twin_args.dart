// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digital_twins_identity.dart';
import 'private_endpoint_connection_digitaltwins.dart';

/// {@template pulumi_digitaltwins_digital_twin_args_doc}
/// The set of arguments for DigitalTwin.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_digital_twin_args_doc}
class DigitalTwinArgs {
  /// The managed identity for the DigitalTwinsInstance.
  final pulumi.Input<DigitalTwinsIdentity>? identity;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The private endpoint connections.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnectionDigitaltwins>>? privateEndpointConnections;
  /// Public network access for the DigitalTwinsInstance.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group that contains the DigitalTwinsInstance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DigitalTwinsInstance.
  final pulumi.Input<String>? resourceName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DigitalTwinArgs].
  /// [identity] The managed identity for the DigitalTwinsInstance.
  /// [location] The resource location.
  /// [privateEndpointConnections] The private endpoint connections.
  /// [publicNetworkAccess] Public network access for the DigitalTwinsInstance.
  /// [resourceGroupName] The name of the resource group that contains the DigitalTwinsInstance.
  /// [resourceName] The name of the DigitalTwinsInstance.
  /// [tags] The resource tags.
  DigitalTwinArgs({
    pulumi.Output<DigitalTwinsIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<List<PrivateEndpointConnectionDigitaltwins>>? privateEndpointConnections,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<DigitalTwinsIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      privateEndpointConnections = pulumi.Input.asOptionalInput<List<PrivateEndpointConnectionDigitaltwins>>(privateEndpointConnections),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<DigitalTwinsIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'privateEndpointConnections': ?privateEndpointConnections,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory DigitalTwinArgs.fromMap(Map<String, dynamic> map) {
    return DigitalTwinArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<DigitalTwinsIdentity>(DigitalTwinsIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Output.create<List<PrivateEndpointConnectionDigitaltwins>>((map['privateEndpointConnections'] as List).cast<PrivateEndpointConnectionDigitaltwins>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

