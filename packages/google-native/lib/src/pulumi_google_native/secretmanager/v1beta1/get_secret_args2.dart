// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSecret.
class GetSecretArgs2 {
  final Input<String>? project;
  final Input<String> secretId;

  GetSecretArgs2({
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

  factory GetSecretArgs2.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      secretId: Input.asInput<String>(map['secretId']),
    );
  }
}
