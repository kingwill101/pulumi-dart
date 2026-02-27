// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getIssueModel.
class GetIssueModelArgs {
  final Input<String> issueModelId;
  final Input<String> location;
  final Input<String>? project;

  GetIssueModelArgs({
    required this.issueModelId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issueModelId'] = issueModelId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIssueModelArgs.fromMap(Map<String, dynamic> map) {
    return GetIssueModelArgs(
      issueModelId: Input.asInput<String>(map['issueModelId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
