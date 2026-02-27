// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDebugToken.
class GetDebugTokenFirebaseappcheckV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> debugTokenId;
  final pulumi.Input<String>? project;

  GetDebugTokenFirebaseappcheckV1betaArgs({
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

  factory GetDebugTokenFirebaseappcheckV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDebugTokenFirebaseappcheckV1betaArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      debugTokenId: pulumi.Input.asInput<String>(map['debugTokenId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
