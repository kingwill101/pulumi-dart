// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCloneJob.
class GetCloneJobArgs2 {
  final Input<String> cloneJobId;
  final Input<String> location;
  final Input<String> migratingVmId;
  final Input<String>? project;
  final Input<String> sourceId;

  GetCloneJobArgs2({
    required this.cloneJobId,
    required this.location,
    required this.migratingVmId,
    this.project,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloneJobId'] = cloneJobId;
    map['location'] = location;
    map['migratingVmId'] = migratingVmId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetCloneJobArgs2.fromMap(Map<String, dynamic> map) {
    return GetCloneJobArgs2(
      cloneJobId: Input.asInput<String>(map['cloneJobId']),
      location: Input.asInput<String>(map['location']),
      migratingVmId: Input.asInput<String>(map['migratingVmId']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceId: Input.asInput<String>(map['sourceId']),
    );
  }
}
