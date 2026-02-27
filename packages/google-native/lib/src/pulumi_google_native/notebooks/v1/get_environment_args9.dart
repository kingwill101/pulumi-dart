// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEnvironment.
class GetEnvironmentArgs9 {
  final Input<String> environmentId;
  final Input<String> location;
  final Input<String>? project;

  GetEnvironmentArgs9({
    required this.environmentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEnvironmentArgs9.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentArgs9(
      environmentId: Input.asInput<String>(map['environmentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
