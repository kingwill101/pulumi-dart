// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSessionEntityType.
class GetSessionEntityTypeDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  GetSessionEntityTypeDialogflowV3beta1Args({
    required this.agentId,
    required this.entityTypeId,
    required this.environmentId,
    required this.location,
    this.project,
    required this.sessionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['entityTypeId'] = entityTypeId;
    map['environmentId'] = environmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    return map;
  }

  factory GetSessionEntityTypeDialogflowV3beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetSessionEntityTypeDialogflowV3beta1Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      entityTypeId: pulumi.Input.asInput<String>(map['entityTypeId']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sessionId: pulumi.Input.asInput<String>(map['sessionId']),
    );
  }
}
