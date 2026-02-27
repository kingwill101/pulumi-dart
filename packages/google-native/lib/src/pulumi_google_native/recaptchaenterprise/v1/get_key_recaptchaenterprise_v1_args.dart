// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKey.
class GetKeyRecaptchaenterpriseV1Args {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String>? project;

  GetKeyRecaptchaenterpriseV1Args({
    required this.keyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKeyRecaptchaenterpriseV1Args.fromMap(Map<String, dynamic> map) {
    return GetKeyRecaptchaenterpriseV1Args(
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
