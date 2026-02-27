// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCutoverJob.
class GetCutoverJobVmmigrationV1alpha1Args {
  final pulumi.Input<String> cutoverJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  GetCutoverJobVmmigrationV1alpha1Args({
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

  factory GetCutoverJobVmmigrationV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetCutoverJobVmmigrationV1alpha1Args(
      cutoverJobId: pulumi.Input.asInput<String>(map['cutoverJobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      migratingVmId: pulumi.Input.asInput<String>(map['migratingVmId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
    );
  }
}
