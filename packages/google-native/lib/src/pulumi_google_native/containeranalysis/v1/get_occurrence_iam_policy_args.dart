// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOccurrenceIamPolicy.
class GetOccurrenceIamPolicyArgs {
  final Input<String> occurrenceId;
  final Input<String>? project;

  GetOccurrenceIamPolicyArgs({
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

  factory GetOccurrenceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceIamPolicyArgs(
      occurrenceId: Input.asInput<String>(map['occurrenceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
