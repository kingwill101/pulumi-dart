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
      communityResourceId: (map['communityResourceId'] as String).input(),
      destinationEndpointId: (map['destinationEndpointId'] as String).input(),
      enclaveConnectionName: map['enclaveConnectionName'] == null ? null : (map['enclaveConnectionName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceCidr: map['sourceCidr'] == null ? null : (map['sourceCidr']! as String).input(),
      sourceResourceId: (map['sourceResourceId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

