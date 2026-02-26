// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstantSnapshot.
class GetInstantSnapshotArgs {
  final Input<String> instantSnapshot;
  final Input<String>? project;
  final Input<String> zone;

  GetInstantSnapshotArgs({
    required this.instantSnapshot,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instantSnapshot'] = instantSnapshot;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetInstantSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetInstantSnapshotArgs(
      instantSnapshot: Input.asInput<String>(map['instantSnapshot']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
