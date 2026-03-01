// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_config_selected_namespace_labels_resource_label.dart';

class BackupPlanBackupConfigSelectedNamespaceLabels {
  /// A list of Kubernetes Namespace labels.
  /// Structure is documented below.
  final List<BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel>
  resourceLabels;

  /// Creates a new [BackupPlanBackupConfigSelectedNamespaceLabels].
  /// [resourceLabels] A list of Kubernetes Namespace labels.
  BackupPlanBackupConfigSelectedNamespaceLabels({required this.resourceLabels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLabels':
          pulumi.Input.encodeList<
            BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel,
            Map<String, dynamic>
          >(resourceLabels, (value) => value.toMap()),
    };
  }

  factory BackupPlanBackupConfigSelectedNamespaceLabels.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackupPlanBackupConfigSelectedNamespaceLabels(
      resourceLabels:
          pulumi.Input.decodeList<
            BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel
          >(
            map['resourceLabels'],
            (value) =>
                BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
