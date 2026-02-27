// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getStudy.
class GetStudyArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> studyId;

  GetStudyArgs({
    required this.location,
    this.project,
    required this.studyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['studyId'] = studyId;
    return map;
  }

  factory GetStudyArgs.fromMap(Map<String, dynamic> map) {
    return GetStudyArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      studyId: Input.asInput<String>(map['studyId']),
    );
  }
}
