// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Session.
class SessionSpannerV1Args {
  /// The database role which created this session.
  final pulumi.Input<String>? creatorRole;
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> instanceId;

  /// The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more than 64 labels can be associated with a given session. See https://goo.gl/xmQnxf for more information on and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;

  SessionSpannerV1Args({
    this.creatorRole,
    required this.databaseId,
    required this.instanceId,
    this.labels,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final creatorRoleValue = creatorRole;
    if (creatorRoleValue != null) {
      map['creatorRole'] = creatorRoleValue;
    }
    map['databaseId'] = databaseId;
    map['instanceId'] = instanceId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory SessionSpannerV1Args.fromMap(Map<String, dynamic> map) {
    return SessionSpannerV1Args(
      creatorRole: pulumi.Input.asOptionalInput<String>(map['creatorRole']),
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
