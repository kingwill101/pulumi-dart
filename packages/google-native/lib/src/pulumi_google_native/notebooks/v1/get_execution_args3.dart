// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExecution.
class GetExecutionArgs3 {
  final Input<String> executionId;
  final Input<String> location;
  final Input<String>? project;

  GetExecutionArgs3({
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

  factory GetExecutionArgs3.fromMap(Map<String, dynamic> map) {
    return GetExecutionArgs3(
      executionId: Input.asInput<String>(map['executionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
