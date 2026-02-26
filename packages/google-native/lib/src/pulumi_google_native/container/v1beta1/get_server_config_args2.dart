// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServerConfig.
class GetServerConfigArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> projectId;
  final Input<String> zone;

  GetServerConfigArgs2({
    required this.location,
    this.project,
    required this.projectId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['projectId'] = projectId;
    map['zone'] = zone;
    return map;
  }

  factory GetServerConfigArgs2.fromMap(Map<String, dynamic> map) {
    return GetServerConfigArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      projectId: Input.asInput<String>(map['projectId']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
