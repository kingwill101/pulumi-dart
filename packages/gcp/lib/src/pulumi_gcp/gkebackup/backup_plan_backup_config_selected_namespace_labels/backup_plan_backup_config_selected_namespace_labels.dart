// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backup_plan_backup_config_selected_namespace_labels_resource_label/backup_plan_backup_config_selected_namespace_labels_resource_label.dart';

class BackupPlanBackupConfigSelectedNamespaceLabels {
  /// A list of Kubernetes Namespace labels.
  /// Structure is documented below.
  final List<BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel>
      resourceLabels;

  BackupPlanBackupConfigSelectedNamespaceLabels({
    required this.resourceLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceLabels'] = Input.encodeList<
        BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel,
        Map<String, dynamic>>(resourceLabels, (value) => value.toMap());
    return map;
  }

  factory BackupPlanBackupConfigSelectedNamespaceLabels.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedNamespaceLabels(
      resourceLabels: Input.decodeList<
              BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel>(
          map['resourceLabels'],
          (value) => BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
