// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSession.
class GetSessionSpannerV1Args {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  GetSessionSpannerV1Args({
    required this.databaseId,
    required this.instanceId,
    this.project,
    required this.sessionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseId'] = databaseId;
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    return map;
  }

  factory GetSessionSpannerV1Args.fromMap(Map<String, dynamic> map) {
    return GetSessionSpannerV1Args(
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sessionId: pulumi.Input.asInput<String>(map['sessionId']),
    );
  }
}
