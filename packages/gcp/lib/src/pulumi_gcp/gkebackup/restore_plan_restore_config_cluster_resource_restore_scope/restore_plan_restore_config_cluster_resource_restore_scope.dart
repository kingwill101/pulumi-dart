// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../restore_plan_restore_config_cluster_resource_restore_scope_excluded_group_kind/restore_plan_restore_config_cluster_resource_restore_scope_excluded_group_kind.dart';
import '../restore_plan_restore_config_cluster_resource_restore_scope_selected_group_kind/restore_plan_restore_config_cluster_resource_restore_scope_selected_group_kind.dart';

class RestorePlanRestoreConfigClusterResourceRestoreScope {
  /// If True, all valid cluster-scoped resources will be restored.
  /// Mutually exclusive to any other field in `clusterResourceRestoreScope`.
  final bool? allGroupKinds;

  /// A list of cluster-scoped resource group kinds to NOT restore from the backup.
  /// If specified, all valid cluster-scoped resources will be restored except
  /// for those specified in the list.
  /// Mutually exclusive to any other field in `clusterResourceRestoreScope`.
  /// Structure is documented below.
  final List<
          RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKind>?
      excludedGroupKinds;

  /// If True, no cluster-scoped resources will be restored.
  /// Mutually exclusive to any other field in `clusterResourceRestoreScope`.
  final bool? noGroupKinds;

  /// A list of cluster-scoped resource group kinds to restore from the backup.
  /// If specified, only the selected resources will be restored.
  /// Mutually exclusive to any other field in the `clusterResourceRestoreScope`.
  /// Structure is documented below.
  final List<
          RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind>?
      selectedGroupKinds;

  RestorePlanRestoreConfigClusterResourceRestoreScope({
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
      map['excludedGroupKinds'] = Input.encodeList<
          RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKind,
          Map<String,
              dynamic>>(excludedGroupKindsValue, (value) => value.toMap());
    }
    final noGroupKindsValue = noGroupKinds;
    if (noGroupKindsValue != null) {
      map['noGroupKinds'] = noGroupKindsValue;
    }
    final selectedGroupKindsValue = selectedGroupKinds;
    if (selectedGroupKindsValue != null) {
      map['selectedGroupKinds'] = Input.encodeList<
          RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind,
          Map<String,
              dynamic>>(selectedGroupKindsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RestorePlanRestoreConfigClusterResourceRestoreScope.fromMap(
      Map<String, dynamic> map) {
    return RestorePlanRestoreConfigClusterResourceRestoreScope(
      allGroupKinds:
          map['allGroupKinds'] == null ? null : map['allGroupKinds'] as bool,
      excludedGroupKinds: map['excludedGroupKinds'] == null
          ? null
          : Input.decodeList<
                  RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKind>(
              map['excludedGroupKinds'],
              (value) =>
                  RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKind
                      .fromMap((value as Map).cast<String, dynamic>())),
      noGroupKinds:
          map['noGroupKinds'] == null ? null : map['noGroupKinds'] as bool,
      selectedGroupKinds: map['selectedGroupKinds'] == null
          ? null
          : Input.decodeList<
                  RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind>(
              map['selectedGroupKinds'],
              (value) =>
                  RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
