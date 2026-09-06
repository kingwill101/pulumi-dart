// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mtls.dart';

/// Peer authentication settings for the Managed Environment
class ManagedEnvironmentPeerAuthentication {
  /// Mutual TLS authentication settings for the Managed Environment
  final pulumi.Input<Mtls?>? mtls;

  /// Creates a new [ManagedEnvironmentPeerAuthentication].
  /// [mtls] Mutual TLS authentication settings for the Managed Environment
  const ManagedEnvironmentPeerAuthentication({
    this.mtls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mtls': ?pulumi.Input.mapOptionalInputValue<Mtls, Map<String, dynamic>>(mtls, (value) => value.toMap()),
    };
  }

  factory ManagedEnvironmentPeerAuthentication.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentPeerAuthentication(
      mtls: (() { final guardedValue = map['mtls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Mtls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
