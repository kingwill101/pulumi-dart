// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecret.
class GetSecretSecretmanagerV1beta1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> secretId;

  GetSecretSecretmanagerV1beta1Args({
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

  factory GetSecretSecretmanagerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSecretSecretmanagerV1beta1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secretId: pulumi.Input.asInput<String>(map['secretId']),
    );
  }
}
