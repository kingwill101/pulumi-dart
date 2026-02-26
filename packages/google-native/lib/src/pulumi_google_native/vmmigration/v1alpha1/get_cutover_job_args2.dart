// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCutoverJob.
class GetCutoverJobArgs2 {
  final Input<String> cutoverJobId;
  final Input<String> location;
  final Input<String> migratingVmId;
  final Input<String>? project;
  final Input<String> sourceId;

  GetCutoverJobArgs2({
    required this.cutoverJobId,
    required this.location,
    required this.migratingVmId,
    this.project,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cutoverJobId'] = cutoverJobId;
    map['location'] = location;
    map['migratingVmId'] = migratingVmId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetCutoverJobArgs2.fromMap(Map<String, dynamic> map) {
    return GetCutoverJobArgs2(
      cutoverJobId: Input.asInput<String>(map['cutoverJobId']),
      location: Input.asInput<String>(map['location']),
      migratingVmId: Input.asInput<String>(map['migratingVmId']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceId: Input.asInput<String>(map['sourceId']),
    );
  }
}
