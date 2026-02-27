// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackup.
class GetBackupManagedidentitiesV1beta1Args {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;

  GetBackupManagedidentitiesV1beta1Args({
    required this.backupId,
    required this.domainId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['domainId'] = domainId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupManagedidentitiesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetBackupManagedidentitiesV1beta1Args(
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
