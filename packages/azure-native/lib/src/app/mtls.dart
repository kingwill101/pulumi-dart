// ignore_for_file: unused_element, unnecessary_cast


/// Configuration properties for mutual TLS authentication
class Mtls {
  /// Boolean indicating whether the mutual TLS authentication is enabled
  final bool? enabled;

  /// Creates a new [Mtls].
  /// [enabled] Boolean indicating whether the mutual TLS authentication is enabled
  Mtls({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory Mtls.fromMap(Map<String, dynamic> map) {
    return Mtls(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

