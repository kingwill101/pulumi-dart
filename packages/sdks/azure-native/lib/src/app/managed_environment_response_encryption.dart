// ignore_for_file: unused_element, unnecessary_cast


/// Peer traffic encryption settings for the Managed Environment
class ManagedEnvironmentResponseEncryption {
  /// Boolean indicating whether the peer traffic encryption is enabled
  final bool? enabled;

  /// Creates a new [ManagedEnvironmentResponseEncryption].
  /// [enabled] Boolean indicating whether the peer traffic encryption is enabled
  ManagedEnvironmentResponseEncryption({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedEnvironmentResponseEncryption.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentResponseEncryption(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

