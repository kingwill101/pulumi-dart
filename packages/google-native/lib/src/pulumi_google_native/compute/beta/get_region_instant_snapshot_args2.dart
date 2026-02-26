// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionInstantSnapshot.
class GetRegionInstantSnapshotArgs2 {
  final Input<String> instantSnapshot;
  final Input<String>? project;
  final Input<String> region;

  GetRegionInstantSnapshotArgs2({
    required this.instantSnapshot,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instantSnapshot'] = instantSnapshot;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionInstantSnapshotArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionInstantSnapshotArgs2(
      instantSnapshot: Input.asInput<String>(map['instantSnapshot']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
