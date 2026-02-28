// ignore_for_file: unused_element, unnecessary_cast

import 'restore_plan_restore_config_restore_order_group_kind_dependency_requiring.dart';
import 'restore_plan_restore_config_restore_order_group_kind_dependency_satisfying.dart';

class RestorePlanRestoreConfigRestoreOrderGroupKindDependency {
  /// The requiring group kind requires that the satisfying
  /// group kind be restored first.
  /// Structure is documented below.
  final RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiring
      requiring;

  /// The satisfying group kind must be restored first
  /// in order to satisfy the dependency.
  /// Structure is documented below.
  final RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying
      satisfying;

  /// Creates a new [RestorePlanRestoreConfigRestoreOrderGroupKindDependency].
  /// [requiring] The requiring group kind requires that the satisfying
  /// [satisfying] The satisfying group kind must be restored first
  RestorePlanRestoreConfigRestoreOrderGroupKindDependency({
    required this.requiring,
    required this.satisfying,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requiring'] = requiring.toMap();
    map['satisfying'] = satisfying.toMap();
    return map;
  }

  factory RestorePlanRestoreConfigRestoreOrderGroupKindDependency.fromMap(
      Map<String, dynamic> map) {
    return RestorePlanRestoreConfigRestoreOrderGroupKindDependency(
      requiring:
          RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiring
              .fromMap((map['requiring'] as Map).cast<String, dynamic>()),
      satisfying:
          RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying
              .fromMap((map['satisfying'] as Map).cast<String, dynamic>()),
    );
  }
}
