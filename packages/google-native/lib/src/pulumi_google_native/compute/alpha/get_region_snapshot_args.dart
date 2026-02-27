// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionSnapshot.
class GetRegionSnapshotArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> snapshot;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      snapshot: pulumi.Input.asInput<String>(map['snapshot']),
    );
  }
}
