// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCollector.
class GetCollectorArgs {
  final Input<String> collectorId;
  final Input<String> location;
  final Input<String>? project;

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
      collectorId: Input.asInput<String>(map['collectorId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
