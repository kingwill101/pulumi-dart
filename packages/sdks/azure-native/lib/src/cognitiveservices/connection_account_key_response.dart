// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Account key object for connection credential.
class ConnectionAccountKeyResponse {
  final pulumi.Input<String>? key;

  /// Creates a new [ConnectionAccountKeyResponse].
  /// [key] Optional.
  ConnectionAccountKeyResponse({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory ConnectionAccountKeyResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionAccountKeyResponse(
      key: map['key'] == null ? null : (map['key'] as String).input(),
    );
  }
}

