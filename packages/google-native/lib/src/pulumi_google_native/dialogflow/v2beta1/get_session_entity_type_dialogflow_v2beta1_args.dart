// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSessionEntityType.
class GetSessionEntityTypeDialogflowV2beta1Args {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;
  final pulumi.Input<String> userId;

  GetSessionEntityTypeDialogflowV2beta1Args({
    required this.entityTypeId,
    required this.environmentId,
    required this.location,
    this.project,
    required this.sessionId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityTypeId'] = entityTypeId;
    map['environmentId'] = environmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    map['userId'] = userId;
    return map;
  }

  factory GetSessionEntityTypeDialogflowV2beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetSessionEntityTypeDialogflowV2beta1Args(
      entityTypeId: pulumi.Input.asInput<String>(map['entityTypeId']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sessionId: pulumi.Input.asInput<String>(map['sessionId']),
      userId: pulumi.Input.asInput<String>(map['userId']),
    );
  }
}
