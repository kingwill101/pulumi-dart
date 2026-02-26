// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDestGroup.
class GetDestGroupArgs {
  final Input<String> destGroupId;
  final Input<String> location;
  final Input<String>? project;

  GetDestGroupArgs({
    required this.destGroupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destGroupId'] = destGroupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDestGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDestGroupArgs(
      destGroupId: Input.asInput<String>(map['destGroupId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
