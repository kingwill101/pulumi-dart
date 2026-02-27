// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionInstantSnapshot.
class GetRegionInstantSnapshotArgs {
  final Input<String> instantSnapshot;
  final Input<String>? project;
  final Input<String> region;

  GetRegionInstantSnapshotArgs({
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

  factory GetRegionInstantSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstantSnapshotArgs(
      instantSnapshot: Input.asInput<String>(map['instantSnapshot']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
