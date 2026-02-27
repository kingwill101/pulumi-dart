// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExecution.
class GetExecutionNotebooksV1Args {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetExecutionNotebooksV1Args({
    required this.executionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionId'] = executionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExecutionNotebooksV1Args.fromMap(Map<String, dynamic> map) {
    return GetExecutionNotebooksV1Args(
      executionId: pulumi.Input.asInput<String>(map['executionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
