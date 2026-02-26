// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKey.
class GetKeyArgs2 {
  final Input<String> keyId;
  final Input<String>? project;
  final Input<String>? publicKeyType;
  final Input<String> serviceAccountId;

  GetKeyArgs2({
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

  factory GetKeyArgs2.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs2(
      keyId: Input.asInput<String>(map['keyId']),
      project: Input.asOptionalInput<String>(map['project']),
      publicKeyType: Input.asOptionalInput<String>(map['publicKeyType']),
      serviceAccountId: Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
