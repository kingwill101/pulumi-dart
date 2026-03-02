// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Peer traffic encryption settings for the Managed Environment
class ManagedEnvironmentEncryption {
  /// Boolean indicating whether the peer traffic encryption is enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedEnvironmentEncryption].
  /// [enabled] Boolean indicating whether the peer traffic encryption is enabled
  ManagedEnvironmentEncryption({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedEnvironmentEncryption.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentEncryption(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

