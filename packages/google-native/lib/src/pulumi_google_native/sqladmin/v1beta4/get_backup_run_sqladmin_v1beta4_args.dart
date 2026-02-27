// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackupRun.
class GetBackupRunSqladminV1beta4Args {
  final pulumi.Input<String> id;
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  GetBackupRunSqladminV1beta4Args({
    required this.id,
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupRunSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return GetBackupRunSqladminV1beta4Args(
      id: pulumi.Input.asInput<String>(map['id']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
