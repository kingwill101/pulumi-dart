// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getExperiment.
class GetExperimentArgs3 {
  final Input<String> agentId;
  final Input<String> environmentId;
  final Input<String> experimentId;
  final Input<String> location;
  final Input<String>? project;

  GetExperimentArgs3({
    required this.agentId,
    required this.environmentId,
    required this.experimentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['environmentId'] = environmentId;
    map['experimentId'] = experimentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExperimentArgs3.fromMap(Map<String, dynamic> map) {
    return GetExperimentArgs3(
      agentId: Input.asInput<String>(map['agentId']),
      environmentId: Input.asInput<String>(map['environmentId']),
      experimentId: Input.asInput<String>(map['experimentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
