// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client connection related configuration.
class ClientConnection {
  /// Indicates if client connection is enabled for this SQL Server instance.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ClientConnection].
  /// [enabled] Indicates if client connection is enabled for this SQL Server instance.
  const ClientConnection({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClientConnection.fromMap(Map<String, dynamic> map) {
    return ClientConnection(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
