// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBackupRun.
class GetBackupRunArgs {
  final Input<String> id;
  final Input<String> instance;
  final Input<String>? project;

  GetBackupRunArgs({
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

  factory GetBackupRunArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupRunArgs(
      id: Input.asInput<String>(map['id']),
      instance: Input.asInput<String>(map['instance']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
