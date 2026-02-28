// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_autoscaling_settings_autoscaling_policy.dart';

class ClusterAutoscalingSettings {
  /// The map with autoscaling policies applied to the cluster.
  /// The key is the identifier of the policy.
  /// It must meet the following requirements:
  /// * Only contains 1-63 alphanumeric characters and hyphens
  /// * Begins with an alphabetical character
  /// * Ends with a non-hyphen character
  /// * Not formatted as a UUID
  /// * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// Currently the map must contain only one element
  /// that describes the autoscaling policy for compute nodes.
  /// Structure is documented below.
  final List<ClusterAutoscalingSettingsAutoscalingPolicy> autoscalingPolicies;

  /// The minimum duration between consecutive autoscale operations.
  /// It starts once addition or removal of nodes is fully completed.
  /// Minimum cool down period is 30m.
  /// Cool down period must be in whole minutes (for example, 30m, 31m, 50m).
  /// Mandatory for successful addition of autoscaling settings in cluster.
  final String? coolDownPeriod;

  /// Maximum number of nodes of any type in a cluster.
  /// Mandatory for successful addition of autoscaling settings in cluster.
  final int? maxClusterNodeCount;

  /// Minimum number of nodes of any type in a cluster.
  /// Mandatory for successful addition of autoscaling settings in cluster.
  final int? minClusterNodeCount;

  /// Creates a new [ClusterAutoscalingSettings].
  /// [autoscalingPolicies] The map with autoscaling policies applied to the cluster.
  /// [coolDownPeriod] The minimum duration between consecutive autoscale operations.
  /// [maxClusterNodeCount] Maximum number of nodes of any type in a cluster.
  /// [minClusterNodeCount] Minimum number of nodes of any type in a cluster.
  ClusterAutoscalingSettings({
    required this.autoscalingPolicies,
    this.coolDownPeriod,
    this.maxClusterNodeCount,
    this.minClusterNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicies'] = pulumi.Input.encodeList<
        ClusterAutoscalingSettingsAutoscalingPolicy,
        Map<String, dynamic>>(autoscalingPolicies, (value) => value.toMap());
    final coolDownPeriodValue = coolDownPeriod;
    if (coolDownPeriodValue != null) {
      map['coolDownPeriod'] = coolDownPeriodValue;
    }
    final maxClusterNodeCountValue = maxClusterNodeCount;
    if (maxClusterNodeCountValue != null) {
      map['maxClusterNodeCount'] = maxClusterNodeCountValue;
    }
    final minClusterNodeCountValue = minClusterNodeCount;
    if (minClusterNodeCountValue != null) {
      map['minClusterNodeCount'] = minClusterNodeCountValue;
    }
    return map;
  }

  factory ClusterAutoscalingSettings.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingSettings(
      autoscalingPolicies:
          pulumi.Input.decodeList<ClusterAutoscalingSettingsAutoscalingPolicy>(
              map['autoscalingPolicies'],
              (value) => ClusterAutoscalingSettingsAutoscalingPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      coolDownPeriod: map['coolDownPeriod'] == null
          ? null
          : map['coolDownPeriod'] as String,
      maxClusterNodeCount: map['maxClusterNodeCount'] == null
          ? null
          : map['maxClusterNodeCount'] as int,
      minClusterNodeCount: map['minClusterNodeCount'] == null
          ? null
          : map['minClusterNodeCount'] as int,
    );
  }
}
