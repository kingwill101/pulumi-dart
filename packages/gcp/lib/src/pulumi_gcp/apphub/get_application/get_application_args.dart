// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getApplication.
class GetApplicationArgs {
  final Input<String> applicationId;
  final Input<String> location;
  final Input<String> project;

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
      applicationId: Input.asInput<String>(map['applicationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asInput<String>(map['project']),
    );
  }
}
