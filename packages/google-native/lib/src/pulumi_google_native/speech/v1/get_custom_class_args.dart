// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCustomClass.
class GetCustomClassArgs {
  final Input<String> customClassId;
  final Input<String> location;
  final Input<String>? project;

  GetCustomClassArgs({
    required this.customClassId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customClassId'] = customClassId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCustomClassArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomClassArgs(
      customClassId: Input.asInput<String>(map['customClassId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
