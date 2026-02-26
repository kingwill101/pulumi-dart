// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionSnapshot.
class GetRegionSnapshotArgs {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> snapshot;

  GetRegionSnapshotArgs({
    this.project,
    required this.region,
    required this.snapshot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['snapshot'] = snapshot;
    return map;
  }

  factory GetRegionSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSnapshotArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      snapshot: Input.asInput<String>(map['snapshot']),
    );
  }
}
