// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionAccessKey {
  final pulumi.Input<String>? accessKeyId;
  final pulumi.Input<String>? secretAccessKey;

  /// Creates a new [WorkspaceConnectionAccessKey].
  /// [accessKeyId] Optional.
  /// [secretAccessKey] Optional.
  WorkspaceConnectionAccessKey({
    this.accessKeyId,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory WorkspaceConnectionAccessKey.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionAccessKey(
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId']! as String).input(),
      secretAccessKey: map['secretAccessKey'] == null ? null : (map['secretAccessKey']! as String).input(),
    );
  }
}

