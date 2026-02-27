// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMigratingVm.
class GetMigratingVmVmmigrationV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;
  final pulumi.Input<String>? view;

  GetMigratingVmVmmigrationV1alpha1Args({
    required this.location,
    required this.migratingVmId,
    this.project,
    required this.sourceId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['migratingVmId'] = migratingVmId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceId'] = sourceId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetMigratingVmVmmigrationV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetMigratingVmVmmigrationV1alpha1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      migratingVmId: pulumi.Input.asInput<String>(map['migratingVmId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
