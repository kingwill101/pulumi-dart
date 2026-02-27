// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApplication.
class GetApplicationArgs {
  final pulumi.Input<String> applicationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> project;

  GetApplicationArgs({
    required this.applicationId,
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['location'] = location;
    map['project'] = project;
    return map;
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asInput<String>(map['project']),
    );
  }
}
