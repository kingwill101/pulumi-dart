// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecret.
class GetSecretArgs {
  /// The ID of the project in which the resource belongs.
  final Input<String>? project;

  /// The name of the secret.
  final Input<String> secretId;

  GetSecretArgs({
    this.project,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['secretId'] = secretId;
    return map;
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      project: Input.asOptionalInput<String>(map['project']),
      secretId: Input.asInput<String>(map['secretId']),
    );
  }
}
