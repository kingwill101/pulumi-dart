// ignore_for_file: unused_element, unnecessary_cast

import 'managed_environment_response_encryption.dart';

/// Peer traffic settings for the Managed Environment
class ManagedEnvironmentResponsePeerTrafficConfiguration {
  /// Peer traffic encryption settings for the Managed Environment
  final ManagedEnvironmentResponseEncryption? encryption;

  /// Creates a new [ManagedEnvironmentResponsePeerTrafficConfiguration].
  /// [encryption] Peer traffic encryption settings for the Managed Environment
  ManagedEnvironmentResponsePeerTrafficConfiguration({
    this.encryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?encryption == null ? null : encryption!.toMap(),
    };
  }

  factory ManagedEnvironmentResponsePeerTrafficConfiguration.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentResponsePeerTrafficConfiguration(
      encryption: map['encryption'] == null ? null : ManagedEnvironmentResponseEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
    );
  }
}

