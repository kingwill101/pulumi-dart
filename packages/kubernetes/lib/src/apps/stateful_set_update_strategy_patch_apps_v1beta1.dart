// ignore_for_file: unused_element, unnecessary_cast

import 'rolling_update_stateful_set_strategy_patch_apps_v1beta1.dart';

/// StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
class StatefulSetUpdateStrategyPatchAppsV1beta1 {
  /// RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  final RollingUpdateStatefulSetStrategyPatchAppsV1beta1? rollingUpdate;
  /// Type indicates the type of the StatefulSetUpdateStrategy.
  final String? type;

  /// Creates a new [StatefulSetUpdateStrategyPatchAppsV1beta1].
  /// [rollingUpdate] RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  /// [type] Type indicates the type of the StatefulSetUpdateStrategy.
  StatefulSetUpdateStrategyPatchAppsV1beta1({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?rollingUpdate == null ? null : rollingUpdate!.toMap(),
      'type': ?type,
    };
  }

  factory StatefulSetUpdateStrategyPatchAppsV1beta1.fromMap(Map<String, dynamic> map) {
    return StatefulSetUpdateStrategyPatchAppsV1beta1(
      rollingUpdate: map['rollingUpdate'] == null ? null : RollingUpdateStatefulSetStrategyPatchAppsV1beta1.fromMap((map['rollingUpdate'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

