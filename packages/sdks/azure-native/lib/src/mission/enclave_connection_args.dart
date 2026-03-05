// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_enclave_connection_args_doc}
/// The set of arguments for EnclaveConnection.
/// {@endtemplate}
/// {@macro pulumi_mission_enclave_connection_args_doc}
class EnclaveConnectionArgs {
  /// Community Resource Id.
  final pulumi.Input<String> communityResourceId;
  /// Destination Endpoint Resource Id.
  final pulumi.Input<String> destinationEndpointId;
  /// The name of the Enclave Connection Resource
  final pulumi.Input<String>? enclaveConnectionName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Source CIDR.
  final pulumi.Input<String>? sourceCidr;
  /// Source Resource Id.
  final pulumi.Input<String> sourceResourceId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnclaveConnectionArgs].
  /// [communityResourceId] Community Resource Id.
  /// [destinationEndpointId] Destination Endpoint Resource Id.
  /// [enclaveConnectionName] The name of the Enclave Connection Resource
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceCidr] Source CIDR.
  /// [sourceResourceId] Source Resource Id.
  /// [tags] Resource tags.
  EnclaveConnectionArgs({
    required this.communityResourceId,
    required this.destinationEndpointId,
    this.enclaveConnectionName,
    this.location,
    required this.resourceGroupName,
    this.sourceCidr,
    required this.sourceResourceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityResourceId': communityResourceId,
      'destinationEndpointId': destinationEndpointId,
      'enclaveConnectionName': ?enclaveConnectionName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sourceCidr': ?sourceCidr,
      'sourceResourceId': sourceResourceId,
      'tags': ?tags,
    };
  }

  factory EnclaveConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EnclaveConnectionArgs(
      communityResourceId: pulumi.Input.fromValue(map['communityResourceId'] as String),
      destinationEndpointId: pulumi.Input.fromValue(map['destinationEndpointId'] as String),
      enclaveConnectionName: (() { final guardedValue = map['enclaveConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceCidr: (() { final guardedValue = map['sourceCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: pulumi.Input.fromValue(map['sourceResourceId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

