// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_upgrade_gkeupgrade_feature_condition_response3.dart';
import 'cluster_upgrade_gkeupgrade_state_response3.dart';

/// GKEUpgradeFeatureState contains feature states for GKE clusters in the scope.
class ClusterUpgradeGKEUpgradeFeatureStateResponse3 {
  /// Current conditions of the feature.
  final List<ClusterUpgradeGKEUpgradeFeatureConditionResponse3> conditions;

  /// Upgrade state. It will eventually replace `state`.
  final List<ClusterUpgradeGKEUpgradeStateResponse3> upgradeState;

  ClusterUpgradeGKEUpgradeFeatureStateResponse3({
    required this.conditions,
    required this.upgradeState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = Input.encodeList<
        ClusterUpgradeGKEUpgradeFeatureConditionResponse3,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['upgradeState'] = Input.encodeList<
        ClusterUpgradeGKEUpgradeStateResponse3,
        Map<String, dynamic>>(upgradeState, (value) => value.toMap());
    return map;
  }

  factory ClusterUpgradeGKEUpgradeFeatureStateResponse3.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeFeatureStateResponse3(
      conditions:
          Input.decodeList<ClusterUpgradeGKEUpgradeFeatureConditionResponse3>(
              map['conditions'],
              (value) =>
                  ClusterUpgradeGKEUpgradeFeatureConditionResponse3.fromMap(
                      (value as Map).cast<String, dynamic>())),
      upgradeState: Input.decodeList<ClusterUpgradeGKEUpgradeStateResponse3>(
          map['upgradeState'],
          (value) => ClusterUpgradeGKEUpgradeStateResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
