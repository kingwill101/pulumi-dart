// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionAccessKeyResponse {
  final pulumi.Input<String>? accessKeyId;
  final pulumi.Input<String>? secretAccessKey;

  /// Creates a new [WorkspaceConnectionAccessKeyResponse].
  /// [accessKeyId] Optional.
  /// [secretAccessKey] Optional.
  WorkspaceConnectionAccessKeyResponse({
    this.accessKeyId,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory WorkspaceConnectionAccessKeyResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionAccessKeyResponse(
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId']! as String).input(),
      secretAccessKey: map['secretAccessKey'] == null ? null : (map['secretAccessKey']! as String).input(),
    );
  }
}

