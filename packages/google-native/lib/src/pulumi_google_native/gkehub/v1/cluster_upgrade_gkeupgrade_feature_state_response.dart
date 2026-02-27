// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_upgrade_gkeupgrade_feature_condition_response.dart';
import 'cluster_upgrade_gkeupgrade_state_response.dart';

/// GKEUpgradeFeatureState contains feature states for GKE clusters in the scope.
class ClusterUpgradeGKEUpgradeFeatureStateResponse {
  /// Current conditions of the feature.
  final List<ClusterUpgradeGKEUpgradeFeatureConditionResponse> conditions;

  /// Upgrade state. It will eventually replace `state`.
  final List<ClusterUpgradeGKEUpgradeStateResponse> upgradeState;

  ClusterUpgradeGKEUpgradeFeatureStateResponse({
    required this.conditions,
    required this.upgradeState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = Input.encodeList<
        ClusterUpgradeGKEUpgradeFeatureConditionResponse,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['upgradeState'] = Input.encodeList<
        ClusterUpgradeGKEUpgradeStateResponse,
        Map<String, dynamic>>(upgradeState, (value) => value.toMap());
    return map;
  }

  factory ClusterUpgradeGKEUpgradeFeatureStateResponse.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeFeatureStateResponse(
      conditions:
          Input.decodeList<ClusterUpgradeGKEUpgradeFeatureConditionResponse>(
              map['conditions'],
              (value) =>
                  ClusterUpgradeGKEUpgradeFeatureConditionResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      upgradeState: Input.decodeList<ClusterUpgradeGKEUpgradeStateResponse>(
          map['upgradeState'],
          (value) => ClusterUpgradeGKEUpgradeStateResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
