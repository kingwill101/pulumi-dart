// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'group_kind.dart';

/// Defines the scope of cluster-scoped resources to restore. Some group kinds are not reasonable choices for a restore, and will cause an error if selected here. Any scope selection that would restore "all valid" resources automatically excludes these group kinds. - gkebackup.gke.io/BackupJob - gkebackup.gke.io/RestoreJob - metrics.k8s.io/NodeMetrics - migration.k8s.io/StorageState - migration.k8s.io/StorageVersionMigration - Node - snapshot.storage.k8s.io/VolumeSnapshotContent - storage.k8s.io/CSINode Some group kinds are driven by restore configuration elsewhere, and will cause an error if selected here. - Namespace - PersistentVolume
class ClusterResourceRestoreScope {
  /// Optional. If True, all valid cluster-scoped resources will be restored. Mutually exclusive to any other field in the message.
  final bool? allGroupKinds;

  /// Optional. A list of cluster-scoped resource group kinds to NOT restore from the backup. If specified, all valid cluster-scoped resources will be restored except for those specified in the list. Mutually exclusive to any other field in the message.
  final List<GroupKind>? excludedGroupKinds;

  /// Optional. If True, no cluster-scoped resources will be restored. This has the same restore scope as if the message is not defined. Mutually exclusive to any other field in the message.
  final bool? noGroupKinds;

  /// Optional. A list of cluster-scoped resource group kinds to restore from the backup. If specified, only the selected resources will be restored. Mutually exclusive to any other field in the message.
  final List<GroupKind>? selectedGroupKinds;

  ClusterResourceRestoreScope({
    this.allGroupKinds,
    this.excludedGroupKinds,
    this.noGroupKinds,
    this.selectedGroupKinds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allGroupKindsValue = allGroupKinds;
    if (allGroupKindsValue != null) {
      map['allGroupKinds'] = allGroupKindsValue;
    }
    final excludedGroupKindsValue = excludedGroupKinds;
    if (excludedGroupKindsValue != null) {
      map['excludedGroupKinds'] =
          Input.encodeList<GroupKind, Map<String, dynamic>>(
              excludedGroupKindsValue, (value) => value.toMap());
    }
    final noGroupKindsValue = noGroupKinds;
    if (noGroupKindsValue != null) {
      map['noGroupKinds'] = noGroupKindsValue;
    }
    final selectedGroupKindsValue = selectedGroupKinds;
    if (selectedGroupKindsValue != null) {
      map['selectedGroupKinds'] =
          Input.encodeList<GroupKind, Map<String, dynamic>>(
              selectedGroupKindsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterResourceRestoreScope.fromMap(Map<String, dynamic> map) {
    return ClusterResourceRestoreScope(
      allGroupKinds:
          map['allGroupKinds'] == null ? null : map['allGroupKinds'] as bool,
      excludedGroupKinds: map['excludedGroupKinds'] == null
          ? null
          : Input.decodeList<GroupKind>(
              map['excludedGroupKinds'],
              (value) =>
                  GroupKind.fromMap((value as Map).cast<String, dynamic>())),
      noGroupKinds:
          map['noGroupKinds'] == null ? null : map['noGroupKinds'] as bool,
      selectedGroupKinds: map['selectedGroupKinds'] == null
          ? null
          : Input.decodeList<GroupKind>(
              map['selectedGroupKinds'],
              (value) =>
                  GroupKind.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
