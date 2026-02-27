// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Session.
class SessionArgs2 {
  /// The database role which created this session.
  final Input<String>? creatorRole;
  final Input<String> databaseId;
  final Input<String> instanceId;

  /// The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more than 64 labels can be associated with a given session. See https://goo.gl/xmQnxf for more information on and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? project;

  SessionArgs2({
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

  factory SessionArgs2.fromMap(Map<String, dynamic> map) {
    return SessionArgs2(
      creatorRole: Input.asOptionalInput<String>(map['creatorRole']),
      databaseId: Input.asInput<String>(map['databaseId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
