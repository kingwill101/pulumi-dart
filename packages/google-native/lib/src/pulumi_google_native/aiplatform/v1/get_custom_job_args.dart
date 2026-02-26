// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCustomJob.
class GetCustomJobArgs {
  final Input<String> customJobId;
  final Input<String> location;
  final Input<String>? project;

  GetCustomJobArgs({
    required this.customJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customJobId'] = customJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCustomJobArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomJobArgs(
      customJobId: Input.asInput<String>(map['customJobId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
