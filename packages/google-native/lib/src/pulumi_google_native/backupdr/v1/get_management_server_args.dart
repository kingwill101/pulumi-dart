// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getManagementServer.
class GetManagementServerArgs {
  final Input<String> location;
  final Input<String> managementServerId;
  final Input<String>? project;

  GetManagementServerArgs({
    required this.location,
    required this.managementServerId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['managementServerId'] = managementServerId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementServerArgs(
      location: Input.asInput<String>(map['location']),
      managementServerId: Input.asInput<String>(map['managementServerId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
