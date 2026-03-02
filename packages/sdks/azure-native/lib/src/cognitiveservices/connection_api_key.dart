// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Api key object for connection credential.
class ConnectionApiKey {
  final pulumi.Input<String>? key;

  /// Creates a new [ConnectionApiKey].
  /// [key] Optional.
  ConnectionApiKey({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory ConnectionApiKey.fromMap(Map<String, dynamic> map) {
    return ConnectionApiKey(
      key: map['key'] == null ? null : (map['key'] as String).input(),
    );
  }
}

