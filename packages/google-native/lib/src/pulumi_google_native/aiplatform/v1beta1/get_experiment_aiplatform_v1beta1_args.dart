// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExperiment.
class GetExperimentAiplatformV1beta1Args {
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tensorboardId;

  GetExperimentAiplatformV1beta1Args({
    required this.experimentId,
    required this.location,
    this.project,
    required this.tensorboardId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['experimentId'] = experimentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tensorboardId'] = tensorboardId;
    return map;
  }

  factory GetExperimentAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetExperimentAiplatformV1beta1Args(
      experimentId: pulumi.Input.asInput<String>(map['experimentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tensorboardId: pulumi.Input.asInput<String>(map['tensorboardId']),
    );
  }
}
