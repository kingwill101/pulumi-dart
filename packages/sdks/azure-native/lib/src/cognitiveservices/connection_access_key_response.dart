// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAccessKeyResponse {
  final pulumi.Input<String>? accessKeyId;
  final pulumi.Input<String>? secretAccessKey;

  /// Creates a new [ConnectionAccessKeyResponse].
  /// [accessKeyId] Optional.
  /// [secretAccessKey] Optional.
  ConnectionAccessKeyResponse({
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
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId']! as String).input(),
      secretAccessKey: map['secretAccessKey'] == null ? null : (map['secretAccessKey']! as String).input(),
    );
  }
}

