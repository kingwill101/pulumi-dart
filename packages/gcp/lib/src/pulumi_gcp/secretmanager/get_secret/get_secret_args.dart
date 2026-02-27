// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecret.
class GetSecretArgs {
  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;

  /// The name of the secret.
  final pulumi.Input<String> secretId;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secretId: pulumi.Input.asInput<String>(map['secretId']),
    );
  }
}
