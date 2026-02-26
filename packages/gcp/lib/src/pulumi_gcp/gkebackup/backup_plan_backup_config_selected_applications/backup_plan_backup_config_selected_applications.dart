// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backup_plan_backup_config_selected_applications_namespaced_name/backup_plan_backup_config_selected_applications_namespaced_name.dart';

class BackupPlanBackupConfigSelectedApplications {
  /// A list of namespaced Kubernetes resources.
  /// Structure is documented below.
  final List<BackupPlanBackupConfigSelectedApplicationsNamespacedName>
      namespacedNames;

  BackupPlanBackupConfigSelectedApplications({
    required this.namespacedNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespacedNames'] = Input.encodeList<
        BackupPlanBackupConfigSelectedApplicationsNamespacedName,
        Map<String, dynamic>>(namespacedNames, (value) => value.toMap());
    return map;
  }

  factory BackupPlanBackupConfigSelectedApplications.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedApplications(
      namespacedNames: Input.decodeList<
              BackupPlanBackupConfigSelectedApplicationsNamespacedName>(
          map['namespacedNames'],
          (value) =>
              BackupPlanBackupConfigSelectedApplicationsNamespacedName.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
