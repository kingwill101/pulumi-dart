// ignore_for_file: unused_element, unnecessary_cast

import 'compute_node_identity_reference.dart';

/// A private container registry.
class ContainerRegistry {
  /// The reference to a user assigned identity associated with the Batch pool which a compute node will use.
  final ComputeNodeIdentityReference? identityReference;
  /// The password to log into the registry server.
  final String? password;
  /// If omitted, the default is "docker.io".
  final String? registryServer;
  /// The user name to log into the registry server.
  final String? userName;

  /// Creates a new [ContainerRegistry].
  /// [identityReference] The reference to a user assigned identity associated with the Batch pool which a compute node will use.
  /// [password] The password to log into the registry server.
  /// [registryServer] If omitted, the default is "docker.io".
  /// [userName] The user name to log into the registry server.
  ContainerRegistry({
    this.identityReference,
    this.password,
    this.registryServer,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityReference': ?identityReference == null ? null : identityReference!.toMap(),
      'password': ?password,
      'registryServer': ?registryServer,
      'userName': ?userName,
    };
  }

  factory ContainerRegistry.fromMap(Map<String, dynamic> map) {
    return ContainerRegistry(
      identityReference: map['identityReference'] == null ? null : ComputeNodeIdentityReference.fromMap((map['identityReference'] as Map).cast<String, dynamic>()),
      password: map['password'] == null ? null : map['password'] as String,
      registryServer: map['registryServer'] == null ? null : map['registryServer'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

