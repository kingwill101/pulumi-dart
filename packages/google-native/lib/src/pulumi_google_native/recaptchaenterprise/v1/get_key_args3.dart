// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getKey.
class GetKeyArgs3 {
  final Input<String> keyId;
  final Input<String>? project;

  GetKeyArgs3({
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

  factory GetKeyArgs3.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs3(
      keyId: Input.asInput<String>(map['keyId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
