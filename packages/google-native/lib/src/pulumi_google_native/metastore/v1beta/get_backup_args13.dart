// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBackup.
class GetBackupArgs13 {
  final Input<String> backupId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> serviceId;

  GetBackupArgs13({
    required this.backupId,
    required this.location,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetBackupArgs13.fromMap(Map<String, dynamic> map) {
    return GetBackupArgs13(
      backupId: Input.asInput<String>(map['backupId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
