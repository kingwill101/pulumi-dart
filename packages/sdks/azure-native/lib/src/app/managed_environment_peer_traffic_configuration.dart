// ignore_for_file: unused_element, unnecessary_cast

import 'managed_environment_encryption.dart';

/// Peer traffic settings for the Managed Environment
class ManagedEnvironmentPeerTrafficConfiguration {
  /// Peer traffic encryption settings for the Managed Environment
  final ManagedEnvironmentEncryption? encryption;

  /// Creates a new [ManagedEnvironmentPeerTrafficConfiguration].
  /// [encryption] Peer traffic encryption settings for the Managed Environment
  ManagedEnvironmentPeerTrafficConfiguration({
    this.encryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?encryption == null ? null : encryption!.toMap(),
    };
  }

  factory ManagedEnvironmentPeerTrafficConfiguration.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentPeerTrafficConfiguration(
      encryption: map['encryption'] == null ? null : ManagedEnvironmentEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
    );
  }
}

