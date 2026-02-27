// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getMigratingVm.
class GetMigratingVmArgs2 {
  final Input<String> location;
  final Input<String> migratingVmId;
  final Input<String>? project;
  final Input<String> sourceId;
  final Input<String>? view;

  GetMigratingVmArgs2({
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

  factory GetMigratingVmArgs2.fromMap(Map<String, dynamic> map) {
    return GetMigratingVmArgs2(
      location: Input.asInput<String>(map['location']),
      migratingVmId: Input.asInput<String>(map['migratingVmId']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceId: Input.asInput<String>(map['sourceId']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
