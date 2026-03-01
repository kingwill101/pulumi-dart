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
    required pulumi.Output<String> communityResourceId,
    required pulumi.Output<String> destinationEndpointId,
    pulumi.Output<String>? enclaveConnectionName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sourceCidr,
    required pulumi.Output<String> sourceResourceId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      communityResourceId = pulumi.Input.asInput<String>(communityResourceId),
      destinationEndpointId = pulumi.Input.asInput<String>(destinationEndpointId),
      enclaveConnectionName = pulumi.Input.asOptionalInput<String>(enclaveConnectionName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceCidr = pulumi.Input.asOptionalInput<String>(sourceCidr),
      sourceResourceId = pulumi.Input.asInput<String>(sourceResourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      communityResourceId: pulumi.Output.create<String>(map['communityResourceId'] as String),
      destinationEndpointId: pulumi.Output.create<String>(map['destinationEndpointId'] as String),
      enclaveConnectionName: map['enclaveConnectionName'] == null ? null : pulumi.Output.create<String>(map['enclaveConnectionName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceCidr: map['sourceCidr'] == null ? null : pulumi.Output.create<String>(map['sourceCidr'] as String),
      sourceResourceId: pulumi.Output.create<String>(map['sourceResourceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

