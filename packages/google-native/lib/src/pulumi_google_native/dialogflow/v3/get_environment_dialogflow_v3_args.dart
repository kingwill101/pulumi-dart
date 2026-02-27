// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEnvironment.
class GetEnvironmentDialogflowV3Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEnvironmentDialogflowV3Args({
    required this.agentId,
    required this.environmentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['environmentId'] = environmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEnvironmentDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentDialogflowV3Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
