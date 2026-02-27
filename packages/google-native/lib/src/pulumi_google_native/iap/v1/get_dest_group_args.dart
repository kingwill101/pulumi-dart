// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDestGroup.
class GetDestGroupArgs {
  final pulumi.Input<String> destGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      destGroupId: pulumi.Input.asInput<String>(map['destGroupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
