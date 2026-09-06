// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digital_twins_identity.dart';
import 'private_endpoint_connection.dart';

/// {@template pulumi_digitaltwins_digital_twin_args_doc}
/// The set of arguments for DigitalTwin.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_digital_twin_args_doc}
class DigitalTwinArgs {
  /// The managed identity for the DigitalTwinsInstance.
  final pulumi.Input<DigitalTwinsIdentity?>? identity;
  /// The resource location.
  final pulumi.Input<String?>? location;
  /// The private endpoint connections.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnection>?>? privateEndpointConnections;
  /// Public network access for the DigitalTwinsInstance.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// The name of the resource group that contains the DigitalTwinsInstance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DigitalTwinsInstance.
  final pulumi.Input<String?>? resourceName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DigitalTwinArgs].
  /// [identity] The managed identity for the DigitalTwinsInstance.
  /// [location] The resource location.
  /// [privateEndpointConnections] The private endpoint connections.
  /// [publicNetworkAccess] Public network access for the DigitalTwinsInstance.
  /// [resourceGroupName] The name of the resource group that contains the DigitalTwinsInstance.
  /// [resourceName] The name of the DigitalTwinsInstance.
  /// [tags] The resource tags.
  const DigitalTwinArgs({
    this.identity,
    this.location,
    this.privateEndpointConnections,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<DigitalTwinsIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointConnection>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory DigitalTwinArgs.fromMap(Map<String, dynamic> map) {
    return DigitalTwinArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DigitalTwinsIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnection>(guardedValue, (value) => PrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
