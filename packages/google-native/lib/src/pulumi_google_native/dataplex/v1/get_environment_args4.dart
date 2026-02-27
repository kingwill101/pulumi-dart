// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEnvironment.
class GetEnvironmentArgs4 {
  final Input<String> environmentId;
  final Input<String> lakeId;
  final Input<String> location;
  final Input<String>? project;

  GetEnvironmentArgs4({
    required this.environmentId,
    required this.lakeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['lakeId'] = lakeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEnvironmentArgs4.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentArgs4(
      environmentId: Input.asInput<String>(map['environmentId']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
