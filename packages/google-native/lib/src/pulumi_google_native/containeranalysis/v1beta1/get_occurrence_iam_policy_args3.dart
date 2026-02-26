// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOccurrenceIamPolicy.
class GetOccurrenceIamPolicyArgs3 {
  final Input<String> occurrenceId;
  final Input<String>? project;

  GetOccurrenceIamPolicyArgs3({
    required this.occurrenceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['occurrenceId'] = occurrenceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetOccurrenceIamPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceIamPolicyArgs3(
      occurrenceId: Input.asInput<String>(map['occurrenceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
