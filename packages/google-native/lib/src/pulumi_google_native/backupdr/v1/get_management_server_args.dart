// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getManagementServer.
class GetManagementServerArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> managementServerId;
  final pulumi.Input<String>? project;

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
      location: pulumi.Input.asInput<String>(map['location']),
      managementServerId:
          pulumi.Input.asInput<String>(map['managementServerId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
