// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCollector.
class GetCollectorArgs {
  final pulumi.Input<String> collectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetCollectorArgs({
    required this.collectorId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectorId'] = collectorId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetCollectorArgs(
      collectorId: pulumi.Input.asInput<String>(map['collectorId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
