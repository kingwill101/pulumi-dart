// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Trial.
class TrialAiplatformV1beta1Args {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> studyId;

  TrialAiplatformV1beta1Args({
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

  factory TrialAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TrialAiplatformV1beta1Args(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      studyId: pulumi.Input.asInput<String>(map['studyId']),
    );
  }
}
