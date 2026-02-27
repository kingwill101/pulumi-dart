// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKey.
class GetKeyIamV1Args {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? publicKeyType;
  final pulumi.Input<String> serviceAccountId;

  GetKeyIamV1Args({
    required this.keyId,
    this.project,
    this.publicKeyType,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publicKeyTypeValue = publicKeyType;
    if (publicKeyTypeValue != null) {
      map['publicKeyType'] = publicKeyTypeValue;
    }
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory GetKeyIamV1Args.fromMap(Map<String, dynamic> map) {
    return GetKeyIamV1Args(
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      publicKeyType: pulumi.Input.asOptionalInput<String>(map['publicKeyType']),
      serviceAccountId: pulumi.Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
