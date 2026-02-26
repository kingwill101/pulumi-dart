// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../restore_plan_restore_config_restore_order_group_kind_dependency/restore_plan_restore_config_restore_order_group_kind_dependency.dart';

class RestorePlanRestoreConfigRestoreOrder {
  /// A list of group kind dependency pairs
  /// that is used by Backup for GKE to
  /// generate a group kind restore order.
  /// Structure is documented below.
  final List<RestorePlanRestoreConfigRestoreOrderGroupKindDependency>
      groupKindDependencies;

  RestorePlanRestoreConfigRestoreOrder({
    required this.groupKindDependencies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupKindDependencies'] = Input.encodeList<
        RestorePlanRestoreConfigRestoreOrderGroupKindDependency,
        Map<String, dynamic>>(groupKindDependencies, (value) => value.toMap());
    return map;
  }

  factory RestorePlanRestoreConfigRestoreOrder.fromMap(
      Map<String, dynamic> map) {
    return RestorePlanRestoreConfigRestoreOrder(
      groupKindDependencies: Input.decodeList<
              RestorePlanRestoreConfigRestoreOrderGroupKindDependency>(
          map['groupKindDependencies'],
          (value) =>
              RestorePlanRestoreConfigRestoreOrderGroupKindDependency.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
