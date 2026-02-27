// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCustomClass.
class GetCustomClassArgs {
  final pulumi.Input<String> customClassId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      customClassId: pulumi.Input.asInput<String>(map['customClassId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
