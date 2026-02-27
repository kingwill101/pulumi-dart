// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOccurrenceIamPolicy.
class GetOccurrenceIamPolicyArgs2 {
  final Input<String> occurrenceId;
  final Input<String>? project;

  GetOccurrenceIamPolicyArgs2({
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

  factory GetOccurrenceIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceIamPolicyArgs2(
      occurrenceId: Input.asInput<String>(map['occurrenceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
