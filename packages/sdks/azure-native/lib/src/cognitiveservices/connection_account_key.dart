// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Account key object for connection credential.
class ConnectionAccountKey {
  final pulumi.Input<String>? key;

  /// Creates a new [ConnectionAccountKey].
  /// [key] Optional.
  ConnectionAccountKey({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory ConnectionAccountKey.fromMap(Map<String, dynamic> map) {
    return ConnectionAccountKey(
      key: map['key'] == null ? null : (map['key']! as String).input(),
    );
  }
}

