// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDebugToken.
class GetDebugTokenArgs2 {
  final Input<String> appId;
  final Input<String> debugTokenId;
  final Input<String>? project;

  GetDebugTokenArgs2({
    required this.appId,
    required this.debugTokenId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['debugTokenId'] = debugTokenId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDebugTokenArgs2.fromMap(Map<String, dynamic> map) {
    return GetDebugTokenArgs2(
      appId: Input.asInput<String>(map['appId']),
      debugTokenId: Input.asInput<String>(map['debugTokenId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
