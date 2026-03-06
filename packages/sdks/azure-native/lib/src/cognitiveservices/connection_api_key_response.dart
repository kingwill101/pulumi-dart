// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Api key object for connection credential.
class ConnectionApiKeyResponse {
  final pulumi.Input<String>? key;

  /// Creates a new [ConnectionApiKeyResponse].
  /// [key] Optional.
  const ConnectionApiKeyResponse({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory ConnectionApiKeyResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionApiKeyResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

