// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEnvironment.
class GetEnvironmentArgs8 {
  final Input<String> agentId;
  final Input<String> environmentId;
  final Input<String> location;
  final Input<String>? project;

  GetEnvironmentArgs8({
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

  factory GetEnvironmentArgs8.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentArgs8(
      agentId: Input.asInput<String>(map['agentId']),
      environmentId: Input.asInput<String>(map['environmentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
