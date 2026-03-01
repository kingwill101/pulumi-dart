// ignore_for_file: unused_element, unnecessary_cast

import 'mtls.dart';

/// Peer authentication settings for the Managed Environment
class ManagedEnvironmentPeerAuthentication {
  /// Mutual TLS authentication settings for the Managed Environment
  final Mtls? mtls;

  /// Creates a new [ManagedEnvironmentPeerAuthentication].
  /// [mtls] Mutual TLS authentication settings for the Managed Environment
  ManagedEnvironmentPeerAuthentication({
    this.mtls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mtls': ?mtls == null ? null : mtls!.toMap(),
    };
  }

  factory ManagedEnvironmentPeerAuthentication.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentPeerAuthentication(
      mtls: map['mtls'] == null ? null : Mtls.fromMap((map['mtls'] as Map).cast<String, dynamic>()),
    );
  }
}

