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
      'privateEndpointConnections': ?privateEndpointConnections,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory DigitalTwinArgs.fromMap(Map<String, dynamic> map) {
    return DigitalTwinArgs(
      identity: map['identity'] == null ? null : (DigitalTwinsIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : ((map['privateEndpointConnections']! as List).cast<PrivateEndpointConnectionDigitaltwins>()).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

