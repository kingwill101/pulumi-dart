// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_database_instances_instance_setting_read_pool_auto_scale_config_target_metric/get_database_instances_instance_setting_read_pool_auto_scale_config_target_metric.dart';

class GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig {
  /// True if auto scale in is disabled.
  final bool disableScaleIn;

  /// True if Read Pool Auto Scale is enabled.
  final bool enabled;

  /// Maximum number of nodes in the read pool. If set to lower than current node count, node count will be updated.
  final int maxNodeCount;

  /// Minimum number of nodes in the read pool. If set to higher than current node count, node count will be updated.
  final int minNodeCount;

  /// The cooldown period for scale in operations.
  final int scaleInCooldownSeconds;

  /// The cooldown period for scale out operations.
  final int scaleOutCooldownSeconds;

  /// Target metrics for Read Pool Auto Scale.
  final List<
          GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric>
      targetMetrics;

  GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig({
    required this.disableScaleIn,
    required this.enabled,
    required this.maxNodeCount,
    required this.minNodeCount,
    required this.scaleInCooldownSeconds,
    required this.scaleOutCooldownSeconds,
    required this.targetMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disableScaleIn'] = disableScaleIn;
    map['enabled'] = enabled;
    map['maxNodeCount'] = maxNodeCount;
    map['minNodeCount'] = minNodeCount;
    map['scaleInCooldownSeconds'] = scaleInCooldownSeconds;
    map['scaleOutCooldownSeconds'] = scaleOutCooldownSeconds;
    map['targetMetrics'] = Input.encodeList<
        GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric,
        Map<String, dynamic>>(targetMetrics, (value) => value.toMap());
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig(
      disableScaleIn: map['disableScaleIn'] as bool,
      enabled: map['enabled'] as bool,
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
      scaleInCooldownSeconds: map['scaleInCooldownSeconds'] as int,
      scaleOutCooldownSeconds: map['scaleOutCooldownSeconds'] as int,
      targetMetrics: Input.decodeList<
              GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric>(
          map['targetMetrics'],
          (value) =>
              GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
