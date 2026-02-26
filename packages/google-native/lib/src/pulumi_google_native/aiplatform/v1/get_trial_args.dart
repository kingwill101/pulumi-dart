// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTrial.
class GetTrialArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> studyId;
  final Input<String> trialId;

  GetTrialArgs({
    required this.location,
    this.project,
    required this.studyId,
    required this.trialId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['studyId'] = studyId;
    map['trialId'] = trialId;
    return map;
  }

  factory GetTrialArgs.fromMap(Map<String, dynamic> map) {
    return GetTrialArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      studyId: Input.asInput<String>(map['studyId']),
      trialId: Input.asInput<String>(map['trialId']),
    );
  }
}
