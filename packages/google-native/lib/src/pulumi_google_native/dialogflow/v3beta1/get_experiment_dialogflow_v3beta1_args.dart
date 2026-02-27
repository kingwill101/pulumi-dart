// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExperiment.
class GetExperimentDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetExperimentDialogflowV3beta1Args({
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

  factory GetExperimentDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetExperimentDialogflowV3beta1Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      experimentId: pulumi.Input.asInput<String>(map['experimentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
