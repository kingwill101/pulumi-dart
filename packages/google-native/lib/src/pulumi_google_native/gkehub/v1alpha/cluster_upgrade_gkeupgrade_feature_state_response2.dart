// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_upgrade_gkeupgrade_feature_condition_response2.dart';
import 'cluster_upgrade_gkeupgrade_state_response2.dart';

/// GKEUpgradeFeatureState contains feature states for GKE clusters in the scope.
class ClusterUpgradeGKEUpgradeFeatureStateResponse2 {
  /// Current conditions of the feature.
  final List<ClusterUpgradeGKEUpgradeFeatureConditionResponse2> conditions;

  /// Upgrade state. It will eventually replace `state`.
  final List<ClusterUpgradeGKEUpgradeStateResponse2> upgradeState;

  ClusterUpgradeGKEUpgradeFeatureStateResponse2({
    required this.conditions,
    required this.upgradeState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = Input.encodeList<
        ClusterUpgradeGKEUpgradeFeatureConditionResponse2,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['upgradeState'] = Input.encodeList<
        ClusterUpgradeGKEUpgradeStateResponse2,
        Map<String, dynamic>>(upgradeState, (value) => value.toMap());
    return map;
  }

  factory ClusterUpgradeGKEUpgradeFeatureStateResponse2.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeFeatureStateResponse2(
      conditions:
          Input.decodeList<ClusterUpgradeGKEUpgradeFeatureConditionResponse2>(
              map['conditions'],
              (value) =>
                  ClusterUpgradeGKEUpgradeFeatureConditionResponse2.fromMap(
                      (value as Map).cast<String, dynamic>())),
      upgradeState: Input.decodeList<ClusterUpgradeGKEUpgradeStateResponse2>(
          map['upgradeState'],
          (value) => ClusterUpgradeGKEUpgradeStateResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
