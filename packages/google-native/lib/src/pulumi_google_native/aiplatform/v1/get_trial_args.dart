// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTrial.
class GetTrialArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> studyId;
  final pulumi.Input<String> trialId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      studyId: pulumi.Input.asInput<String>(map['studyId']),
      trialId: pulumi.Input.asInput<String>(map['trialId']),
    );
  }
}
