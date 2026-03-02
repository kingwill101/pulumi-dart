// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_environment_response_encryption.dart';

/// Peer traffic settings for the Managed Environment
class ManagedEnvironmentResponsePeerTrafficConfiguration {
  /// Peer traffic encryption settings for the Managed Environment
  final pulumi.Input<ManagedEnvironmentResponseEncryption>? encryption;

  /// Creates a new [ManagedEnvironmentResponsePeerTrafficConfiguration].
  /// [encryption] Peer traffic encryption settings for the Managed Environment
  ManagedEnvironmentResponsePeerTrafficConfiguration({
    this.encryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<ManagedEnvironmentResponseEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
    };
  }

  factory ManagedEnvironmentResponsePeerTrafficConfiguration.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentResponsePeerTrafficConfiguration(
      encryption: map['encryption'] == null ? null : (ManagedEnvironmentResponseEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

