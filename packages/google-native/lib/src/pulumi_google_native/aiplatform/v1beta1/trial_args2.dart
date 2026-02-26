// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Trial.
class TrialArgs2 {
  final Input<String>? location;
  final Input<String>? project;
  final Input<String> studyId;

  TrialArgs2({
    this.location,
    this.project,
    required this.studyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['studyId'] = studyId;
    return map;
  }

  factory TrialArgs2.fromMap(Map<String, dynamic> map) {
    return TrialArgs2(
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      studyId: Input.asInput<String>(map['studyId']),
    );
  }
}
