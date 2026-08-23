// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAccessKeyResponse {
  final pulumi.Input<String>? accessKeyId;
  final pulumi.Input<String>? secretAccessKey;

  /// Creates a new [ConnectionAccessKeyResponse].
  /// [accessKeyId] Optional.
  /// [secretAccessKey] Optional.
  const ConnectionAccessKeyResponse({
    this.accessKeyId,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory ConnectionAccessKeyResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionAccessKeyResponse(
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKey: (() { final guardedValue = map['secretAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
