// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_node_identity_reference_response.dart';

/// A private container registry.
class ContainerRegistryResponse {
  /// The reference to a user assigned identity associated with the Batch pool which a compute node will use.
  final pulumi.Input<ComputeNodeIdentityReferenceResponse>? identityReference;
  /// The password to log into the registry server.
  final pulumi.Input<String>? password;
  /// If omitted, the default is "docker.io".
  final pulumi.Input<String>? registryServer;
  /// The user name to log into the registry server.
  final pulumi.Input<String>? userName;

  /// Creates a new [ContainerRegistryResponse].
  /// [identityReference] The reference to a user assigned identity associated with the Batch pool which a compute node will use.
  /// [password] The password to log into the registry server.
  /// [registryServer] If omitted, the default is "docker.io".
  /// [userName] The user name to log into the registry server.
  ContainerRegistryResponse({
    this.identityReference,
    this.password,
    this.registryServer,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityReference': ?pulumi.Input.mapOptionalInputValue<ComputeNodeIdentityReferenceResponse, Map<String, dynamic>>(identityReference, (value) => value.toMap()),
      'password': ?password,
      'registryServer': ?registryServer,
      'userName': ?userName,
    };
  }

  factory ContainerRegistryResponse.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryResponse(
      identityReference: map['identityReference'] == null ? null : (ComputeNodeIdentityReferenceResponse.fromMap((map['identityReference'] as Map).cast<String, dynamic>())).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      registryServer: map['registryServer'] == null ? null : (map['registryServer'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

