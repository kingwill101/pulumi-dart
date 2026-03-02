// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Api key object for connection credential.
class ConnectionApiKeyResponse {
  final pulumi.Input<String>? key;

  /// Creates a new [ConnectionApiKeyResponse].
  /// [key] Optional.
  ConnectionApiKeyResponse({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory ConnectionApiKeyResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionApiKeyResponse(
      key: map['key'] == null ? null : (map['key']! as String).input(),
    );
  }
}

