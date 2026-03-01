// ignore_for_file: unused_element, unnecessary_cast


/// Client connection related configuration.
class ClientConnection {
  /// Indicates if client connection is enabled for this SQL Server instance.
  final bool? enabled;

  /// Creates a new [ClientConnection].
  /// [enabled] Indicates if client connection is enabled for this SQL Server instance.
  ClientConnection({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClientConnection.fromMap(Map<String, dynamic> map) {
    return ClientConnection(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

