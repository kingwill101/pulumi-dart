// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client connection related configuration.
class ClientConnectionResponse {
  /// Indicates if client connection is enabled for this SQL Server instance.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ClientConnectionResponse].
  /// [enabled] Indicates if client connection is enabled for this SQL Server instance.
  ClientConnectionResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClientConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ClientConnectionResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

