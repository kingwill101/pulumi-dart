// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCloneJob.
class GetCloneJobVmmigrationV1alpha1Args {
  final pulumi.Input<String> cloneJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  GetCloneJobVmmigrationV1alpha1Args({
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

  factory GetCloneJobVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetCloneJobVmmigrationV1alpha1Args(
      cloneJobId: pulumi.Input.asInput<String>(map['cloneJobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      migratingVmId: pulumi.Input.asInput<String>(map['migratingVmId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
    );
  }
}
