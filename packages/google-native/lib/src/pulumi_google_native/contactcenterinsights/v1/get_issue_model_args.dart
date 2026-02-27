// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIssueModel.
class GetIssueModelArgs {
  final pulumi.Input<String> issueModelId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      issueModelId: pulumi.Input.asInput<String>(map['issueModelId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
