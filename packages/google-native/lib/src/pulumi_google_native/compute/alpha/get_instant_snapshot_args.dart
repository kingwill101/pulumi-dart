// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstantSnapshot.
class GetInstantSnapshotArgs {
  final pulumi.Input<String> instantSnapshot;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

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
      instantSnapshot: pulumi.Input.asInput<String>(map['instantSnapshot']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
